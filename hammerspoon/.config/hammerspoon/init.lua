local hotkey = require("hotkey")
local app    = require("app")
local layout = require("layout")
local space  = require("space")

-- Hammerspoon
hotkey.bind({ "cmd", "alt", "ctrl" }, {
  ["R"] = hs.reload,
  ["C"] = hs.toggleConsole,
  ["N"] = app.showAppName,
  ["B"] = app.showAppBundleID,
})

-- Application shortcuts
hotkey.bind({ "alt" }, {
  ["O"]      = app.launchOrFocusByBundleID("md.obsidian"),
  ["\\"]     = app.launchOrFocusByBundleID("com.brave.Browser"),
  ["tab"]    = app.launchOrFocusByBundleID("com.tdesktop.Telegram"),
  ["return"] = app.launchOrFocusByBundleID("org.alacritty"),
})

-- Window management
space.showMenuBar()
space.icons = require("icons")
hotkey.bind({ "ctrl", "alt" }, {
  ["="]      = layout.larger,
  ["-"]      = layout.smaller,
  ["return"] = layout.maximize,
  ["left"]   = layout.leftHalf,
  ["right"]  = layout.rightHalf,
  ["\\"]     = layout.toggleFullscreen,
  ["1"]      = space.moveToSpace1,
  ["2"]      = space.moveToSpace2,
  ["3"]      = space.moveToSpace3,
  ["4"]      = space.moveToSpace4,
  ["5"]      = space.moveToSpace5,
  ["Q"]      = space.focusPrev,
  ["E"]      = space.focusNext,
  ["`"]      = space.createSpace,
  ["0"]      = space.destroyLastSpace,
})
