local Object = require("classic")

local Player = Object:extend()

function Player:new(x, y)
    self.x = x or 100
    self.y = y or 100
    self.speed = 200
end

function Player:update(dt, input)
    if input:isDown("move_left") then self.x = self.x - self.speed * dt end
    if input:isDown("move_right") then self.x = self.x + self.speed * dt end
    if input:isDown("move_up") then self.y = self.y - self.speed * dt end
    if input:isDown("move_down") then self.y = self.y + self.speed * dt end
end

function Player:draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", self.x, self.y, 32, 32)
end

return Player