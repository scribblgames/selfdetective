cl = {}

function cl.load()
    ft = 1
    evidence = 0
    note = love.graphics.newImage("assets/art/clues/note.png")
    knife = love.graphics.newImage("assets/art/clues/knife.png")
    ovr = love.graphics.newImage("assets/art/p1/end.png")
    notev = 0
    knifev = 0
    colnote = 0
    colknife = 0
    find = love.audio.newSource("assets/sounds/evidencefound.wav", "static")
end

function cl.int(dt)
    ft = ft - .01
    print(ft)
end

function cl.update(dt)
    cl.int()
    if love.keyboard.isDown("space") and gamestate == 2 then
        if px > 662 and px < 874 and ft < 0 then
            if notev == 1 then
                notev = 0
                ft = 1
            elseif notev == 0 and colnote == 0 then
                notev = 1
                ft = 1
                colnote = 1
                find:play()
                evidence = evidence + 1
            elseif notev == 0 and colnote == 1 then
                notev = 1
                ft = 1
            end
        end
        if px > 262 and px < 474 and ft < 0 then
            if knifev == 1 then
                knifev = 0
                ft = 1
            elseif knifev == 0 and colknife == 0 then
                knifev = 1
                ft = 1
                colknife = 1
                find:play()
                evidence = evidence + 1
            elseif knifev == 0 and colknife == 1 then
                knifev = 1
                ft = 1
            end
            if evidence == 2 then
                gamestate = 3
            end
        end
    end
end

function cl.draw()
    if notev == 1 and gamestate == 2 then
        love.graphics.draw(note, 0, 0)
    end
    if knifev == 1 and gamestate == 2 then
        love.graphics.draw(knife, 0, 0)
    end
    if gamestate == 3 then
        love.graphics.draw(ovr, 0, 0)
    end
end