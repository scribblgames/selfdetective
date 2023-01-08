require "titlescreen"
require "crimescene"
require "player"
require "clues"

function love.update(dt) 
    tts.update(dt)
    crs.update(dt)
    player.update(dt)
    cl.update(dt)
end

function love.load()
    tts.load()
    crs.load()
    player.load()
    cl.load()
end

function love.draw()
    tts.draw()
    crs.draw()
    player.draw()
    cl.draw()
end