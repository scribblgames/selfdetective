tts = {}

function tts.load()
    gamestate = 1
    intstate = 1
    bgts = love.graphics.newImage("assets/art/p1/titlescreen.png")
    htp = love.graphics.newImage("assets/art/p1/howtoplay.png")
end

function love.keypressed(key, scancode, isrepeat)
    if key == "space" then
        if intstate == 1 then
        intstate = 2
        else
        intstate = 3
        gamestate = 2
        end
    end
end

function tts.update(dt)

end

function tts.draw()
    if intstate == 1 then
        love.graphics.draw(bgts, 0, 0)
    end
    if intstate == 2 then
        love.graphics.draw(htp, 0, 0)
    end
end