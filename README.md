# Flycast Lua Types & Util

Typing for the global `flycast` object and a few helpers for scripting flycast 2.3. Only tested with VS Code extension [Lua (id sumneko.lua)](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).

## Usage

* Download as zip, unzip, and throw it in your project directory or 
* Add this repo into yours as a submodule (recommended) or
* Whatever you want to do

To get linting to pick up type hints for the flycast global add this to your main file:

```lua
---@type Flycast
_G.flycast = _G.flycast
---@type Flycast.Callbacks
_G.flycast_callbacks = _G.flycast_callbacks
```

There's probably a better way to do this but I really don't know Lua well enough.
