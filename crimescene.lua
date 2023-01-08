crs = {}

function crs.load()
    scene = love.graphics.newImage("assets/art/p2/crimescene.png")
end

function crs.update(dt)
end

function crs.draw()
    if gamestate == 2 then
        love.graphics.draw(scene, 0, 0)
    end
end