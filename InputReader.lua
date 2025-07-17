local Object = require("classic")
local InputBindings = require("InputBindings")

local InputReader = Object:extend()

function InputReader:new()
    self.activeInputs = {}
    self.deadzone = 0.25
end

function InputReader:update()
    self.activeInputs = {}

    for action, binds in pairs(InputBindings) do
        -- Keyboard
        if binds.keys then
            for _, key in ipairs(binds.keys) do
                if love.keyboard.isDown(key) then
                    self.activeInputs[action] = true
                end
            end
        end

        -- Gamepad
        local joysticks = love.joystick.getJoysticks()
        for _, joystick in ipairs(joysticks) do
            if binds.gamepads then
                for _, btn in ipairs(binds.gamepads) do
                    if joystick:isGamepadDown(btn) then
                        self.activeInputs[action] = true
                    end

                    if btn == "leftx_positive" and joystick:getGamepadAxis("leftx") > self.deadzone then
                        self.activeInputs[action] = true
                    elseif btn == "leftx_negative" and joystick:getGamepadAxis("leftx") < -self.deadzone then
                        self.activeInputs[action] = true
                    elseif btn == "lefty_positive" and joystick:getGamepadAxis("lefty") > self.deadzone then
                        self.activeInputs[action] = true
                    elseif btn == "lefty_negative" and joystick:getGamepadAxis("lefty") < -self.deadzone then
                        self.activeInputs[action] = true
                    end
                end
            end
        end
    end
end

function InputReader:isDown(action)
    return self.activeInputs[action] == true
end

return InputReader