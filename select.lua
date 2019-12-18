--Arquivo select.lua
--Autor: Elisson Andrade, 2019

srv=net.createServer(net.TCP)

    srv:listen(80,function(conn)
    conn:on("receive",function(conn,payload)
    print(payload)  -- View the received data,

    function controlLED()
      control = string.sub(payload,fnd[2]+1) -- Data is at end already.
      print(control)
      dofile(control)
    end

    --get control data from payload
    fnd = {string.find(payload,"trilha=")}
    if #fnd ~= 0 then controlLED() end -- Is there data in payload? - Take action if so.

    conn:send('<!DOCTYPE HTML>\n')
    conn:send('<html>\n')
    conn:send('<head><meta http-equiv="content-type" content="text/html; charset=UTF-8">\n')
    -- Scale the viewport to fit the device.
    conn:send('<meta name="viewport" content="width=device-width, initial-scale=1">')
    -- Title
    conn:send('<title>Luzes ritmicas</title>\n')
    conn:send('<script src="https://w.soundcloud.com/player/api.js"></script>\n')
    conn:send('<script>\n')
    
    
    conn:send('limpo = false;\n')
    conn:send('function music_load(){\n')
    conn:send('var select = document.getElementById("trilha");\n')
    conn:send('if(select.options[select.selectedIndex].value == "black-sheep.lua"){')
    conn:send('SC.Widget("soundcloud").load("soundcloud.com/serso1492/clash-at-demonhead-black-sheep-brie-larson-full-version-scott-pilgrim-vs-the-world-ost");')
    conn:send('}else{\n')
    conn:send('SC.Widget("soundcloud").load("soundcloud.com/thedooo/hallelujah-cover");')
    conn:send('}\n')
    conn:send('}\n')
    conn:send('function dispara(evento){\n')
    conn:send('if(limpo && evento.currentPosition  > 0 && evento.currentPosition  < 100 ){ \n')
    conn:send('var select = document.getElementById("trilha");\n')
    conn:send('limpo = false;\n')
    conn:send('var xhr = new XMLHttpRequest();\n')
    conn:send('xhr.open("POST", "");\n')
    conn:send('xhr.send("trilha="+select.options[select.selectedIndex].value );\n')
    conn:send('}\n')
    conn:send('}\n')
    conn:send('function submitForm(oFormElement)\n')
    conn:send('{\n')
    conn:send('var select = document.getElementById("trilha");\n')
    conn:send('limpo = true;\n')
    conn:send('SC.Widget("soundcloud").bind(SC.Widget.Events.PLAY_PROGRESS,dispara);\n')
    conn:send('SC.Widget("soundcloud").play();\n')
    conn:send('return false;\n')
    conn:send('}\n')
    conn:send('</script>\n')
    conn:send('</head>\n')
    -- HTML body Page content.
    conn:send('<body>')
    conn:send('<h1>As luzes piscam acompanhando a m&uacute;sica.</h1>\n')
    conn:send('<p>Selecione a musica e mande tocar</p>\n')
    -- HTML Form (POST type) and buttons.
    conn:send('<form action="" method="POST" onsubmit="return submitForm(this)">\n')
    conn:send('<select name="trilha" id="trilha" autocomplete="off" onchange="music_load()">\n')
    conn:send('<option value="natal-hallelujah.lua">Hallelujah - cov. Leonard cohen </option>\n')
    conn:send('<option value="black-sheep.lua">Black Sheep</option>\n')
    conn:send('</select>\n')
    conn:send('<input type="submit" value="Tocar"></form>\n')
    conn:send('<iframe id="soundcloud" width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay"\n')
    conn:send('src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/559249893&color=%23ff5500&auto_play=false"></iframe>\n')
    conn:send('</body></html>\n')
    conn:on("sent",function(conn) conn:close() end)
    end)
end)
