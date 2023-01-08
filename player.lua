player = {}

function player.load()
    px = 500
    movframe = 1
    frametime = 0
    movdir = 0
    movstat = 0
    pidle = love.graphics.newImage("assets/art/p2/playeridle.png")
    pmov1 = love.graphics.newImage("assets/art/p2/playermov/f1.png")
    pmov2 = love.graphics.newImage("assets/art/p2/playermov/f2.png")
    pmov3 = love.graphics.newImage("assets/art/p2/playermov/f3.png")
    pmov4 = love.graphics.newImage("assets/art/p2/playermov/f4.png")
end

function player.int(dt)
    frametime = frametime + dt
    if frametime >= 0.25 then
      frametime = frametime -.25
      movframe = movframe + 1
    end
    if movframe >= 5 then
        movframe = 1
    end
end
function player.update(dt)
    print(movframe)
    player.int(dt)
    if love.keyboard.isDown("a") then
        px = px - 10
        movedir = 0
        movstat = 1
    elseif love.keyboard.isDown("d") then
        px = px + 10
        movedir = 1
        movstat = 1
    else
        movstat = 0
    end
    if px > 1003 then
        px = 1003
    end
    if px < 103 then
        px = 103
    end
end

function player.draw()
    if gamestate == 2 then
        if movedir == 0 and movstat == 1 then
            if movframe == 1 then
                love.graphics.draw(pmov1, px, 400)
            end
            if movframe == 2 then
                love.graphics.draw(pmov2, px, 400)
            end
            if movframe == 3 then
                love.graphics.draw(pmov3, px, 400)
            end
            if movframe == 4 then
                love.graphics.draw(pmov4, px, 400)
            end
        end
        if movedir == 1 and movstat == 1 then
            if movframe == 1 then
                love.graphics.draw(pmov1, px + 200, 400, nil, -1, 1)
            end
            if movframe == 2 then
                love.graphics.draw(pmov2, px + 200, 400, nil, -1, 1)
            end
            if movframe == 3 then
                love.graphics.draw(pmov3, px + 200, 400, nil, -1, 1)
            end
            if movframe == 4 then
                love.graphics.draw(pmov4, px + 200, 400, nil, -1, 1)
            end
        end
        if movstat == 0 then
            if movedir == 0 then
                love.graphics.draw(pidle, px, 400)
            else
                love.graphics.draw(pidle, px + 200, 400, nil, -1, 1)
            end
        end
    end
end