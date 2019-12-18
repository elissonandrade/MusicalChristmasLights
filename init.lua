--Arquivo init.lua
--Autor: Elisson Andrade, 2019

dofile("login.lua")

--LEDS Verdes
gpio.mode(0,gpio.OUTPUT)
--LEDS vermelhos, da direita para a esquerda
gpio.mode(1,gpio.OUTPUT)
gpio.mode(2,gpio.OUTPUT)
gpio.mode(3,gpio.OUTPUT)
gpio.mode(4,gpio.OUTPUT)
gpio.mode(5,gpio.OUTPUT)
gpio.mode(6,gpio.OUTPUT)
--LED Amarelo
gpio.mode(7,gpio.OUTPUT)
--LED Branco
gpio.mode(8,gpio.OUTPUT)

function piscaCiclo(leds, intervalo)

    for led, valor in next, leds do
        if(valor == 0 or valor == 3) then
            gpio.write(led-1, gpio.LOW)
        else
            gpio.write(led-1, gpio.HIGH)
        end
    end
    tmr.delay(intervalo/2)
    for led, valor in next, leds do
        if(valor == 0 or valor == 2) then
            gpio.write(led-1, gpio.LOW)
        else
            gpio.write(led-1, gpio.HIGH)
        end
    end
    tmr.delay(intervalo/2)
end


function startup()
  if file.open("init.lua") == nil then
    print("init.lua deleted or renamed")
  else
    print("Running")
    file.close("init.lua")
    
    piscaCiclo({1,0,0,0,0,0,0,1,1},10)
    dofile("select.lua")
  end
end

-- Define WiFi station event callbacks
wifi_connect_event = function(T)
  print("Connection to AP("..T.SSID..") established!")
  print("Waiting for IP address...")
  if disconnect_ct ~= nil then disconnect_ct = nil end
  
piscaCiclo({0,0,0,0,0,0,0,1,0},10)
end

wifi_got_ip_event = function(T)
  -- Note: Having an IP address does not mean there is internet access!
  -- Internet connectivity can be determined with net.dns.resolve().
  print("Wifi connection is ready! IP address is: "..T.IP)
  print("Startup will resume momentarily, you have 3 seconds to abort.")
  print("Waiting...")
  piscaCiclo({1,0,0,0,0,0,0,1,0},10)
  startUpTimer = tmr.create() -- JFM mod to allow abort
  startUpTimer:alarm(3000, tmr.ALARM_SINGLE, startup)

end

wifi_disconnect_event = function(T)

  if T.reason == wifi.eventmon.reason.ASSOC_LEAVE then
    --the station has disassociated from a previously connected AP
    return
  end
  -- total_tries: how many times the station will attempt to connect to the AP. Should consider AP reboot duration.
  local total_tries = 75
  print("\nWiFi connection to AP("..T.SSID..") has failed!")

  --There are many possible disconnect reasons, the following iterates through
  --the list and returns the string corresponding to the disconnect reason.
  for key,val in pairs(wifi.eventmon.reason) do
    if val == T.reason then
      print("Disconnect reason: "..val.."("..key..")")
      break
    end
  end

  if disconnect_ct == nil then
    disconnect_ct = 1
  else
    disconnect_ct = disconnect_ct + 1
  end
  if disconnect_ct < total_tries then
    print("Retrying connection...(attempt "..(disconnect_ct+1).." of "..total_tries..")")
  else
    wifi.sta.disconnect()
    print("Aborting connection to AP!")
    disconnect_ct = nil
  end
end

-- Register WiFi Station event callbacks
wifi.eventmon.register(wifi.eventmon.STA_CONNECTED, wifi_connect_event)
wifi.eventmon.register(wifi.eventmon.STA_GOT_IP, wifi_got_ip_event)
wifi.eventmon.register(wifi.eventmon.STA_DISCONNECTED, wifi_disconnect_event)

print("Connecting to WiFi access point...")
wifi.setmode(wifi.STATION)
wifi.sta.config({ssid=SSID, pwd=SENHA})
