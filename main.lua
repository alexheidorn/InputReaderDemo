local InputReader = require("InputReader")
local Player = require("Player")

function love.load()
    input = InputReader()
    player = Player(100, 100)
end

function love.update(dt)
    input:update()
    player:update(dt, input)
end

function love.draw()
    player:draw()
    love.graphics.print("Move with WASD or arrow keys. Press ESC to exit.", 10, 10)
end