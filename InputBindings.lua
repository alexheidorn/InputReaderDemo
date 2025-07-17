local InputBindings = {
    move_left  = { keys = {"a", "left"}, gamepads = {"dpleft", "leftx_negative"} },
    move_right = { keys = {"d", "right"}, gamepads = {"dpright", "leftx_positive"} },
    move_up    = { keys = {"w", "up"}, gamepads = {"dpup", "lefty_negative"} },
    move_down  = { keys = {"s", "down"}, gamepads = {"dpdown", "lefty_positive"} },
    jump       = { keys = {"space"}, gamepads = {"a"} },
    attack     = { keys = {"j"}, gamepads = {"x"} },
    pause      = { keys = {"escape"}, gamepads = {"start"} }
}

return InputBindings