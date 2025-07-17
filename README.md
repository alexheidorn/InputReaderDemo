# InputReaderDemo

A modular input system for [LÖVE 2D](https://love2d.org) that supports both **keyboard** and **gamepad** inputs and maps them to logical **game actions**. Built using [rxi/classic](https://github.com/rxi/classic) OOP style.

## 🎮 Features

- Unified input handling for keyboard and controllers
- Logical actions like `move_left`, `jump`, `pause`
- Customizable input bindings
- Analog stick deadzone detection
- Ready-to-use player movement example

---

## 📦 Installation

### 1. Clone or download the project

```bash
git clone https://github.com/YOUR_USERNAME/InputReaderDemo.git
cd InputReaderDemo
```

### 2. Run with LÖVE
```bash
love .
```
💡 If you’re on Windows, drag the folder onto the love.exe application.

## 🧪 Controls
Action	Keyboard	Gamepad
Move Left	A, ←	D-Pad Left / LeftX–
Move Right	D, →	D-Pad Right / LeftX+
Move Up	W, ↑	D-Pad Up / LeftY–
Move Down	S, ↓	D-Pad Down / LeftY+
Jump	Space	A button
Attack	J	X button
Pause	Escape	Start button

## 🛠️ Customize Input Bindings
All bindings are defined in InputBindings.lua. You can change or extend them easily:

```lua
local InputBindings = {
    move_left  = { keys = {"a", "left"}, gamepads = {"dpleft", "leftx_negative"} },
    jump       = { keys = {"space"}, gamepads = {"a"} },
    -- Add more actions here
}
```
Supports:

isDown(key) for keyboards

isGamepadDown(button) for controllers

Analog stick directions via "leftx_positive", "leftx_negative", etc.

## 📁 File Structure
```bash
InputReaderDemo/
├── classic.lua         # Classic OOP library
├── main.lua            # Game entry point
├── Player.lua          # Simple movable rectangle player
├── InputReader.lua     # Input abstraction system
└── InputBindings.lua   # Customizable action bindings
```
## 📜 License
This project is open-source and uses the MIT License. Classic library by @rxi is MIT licensed.

## 🙌 Credits
LÖVE 2D

rxi/classic OOP framework