---@type ChadrcConfig
local M = {}

M.lazy_nvim = { performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript", "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        -- "ftplugin",
      },
    },
  },
}

M.ui = {
  theme = "meut",
  changed_themes = {
    meut = {
      base_30 = {
        nord_blue = "#6a9589",
        blue = "#6a9589",
        red = "#c34043",
        green = "#76946a",
        vibrant_green = "#98bb6c",
        cyan = "#7fb4ca",
      },
    },
  },

  transparency = false,
  tabufline = {
    overriden_modules = function(modules)
           modules[#modules+1] = modules[1]
           table.remove(modules,1)
   end
  },
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    overriden_modules = nil,
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "⠀⠀⠀⠀⠀⠀⠀⣿⡏⡎⡥⢋⣂⠙⢤⣄⡀⠀⠀⠀⠀⢀⣀⣀⡠⣄⠀⢀⠀⠀⠀⠀⣀⣀⡤⣒⠵⣓⠒⠷⢮⡸⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⢸⣟⣧⠻⢩⠼⢮⣔⢈⢺⣿⡋⠱⢯⠋⡬⢩⠴⠁⣩⠩⣻⠓⢩⠓⣟⣩⣊⢴⣨⣍⡉⠿⣭⡷⠆⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣓⣝⢺⣳⣷⣷⠃⠉⠃⠀⣿⠔⠃⡘⠄⡞⠁⣼⠀⠀⠀⠋⢨⣷⠿⠷⣚⢯⣐⣿⣹⡿⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣟⢋⣁⠒⢲⡄⠀⢠⣅⠠⢸⢠⢼⠑⢀⠈⠄⠀⠀⠀⠈⠐⣉⡽⣿⣷⣿⣿⠙⠀  ⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⣾⣿⢿⣷⣎⣯⢦⡀⠠⣀⣻⣷⣈⣷⣸⢄⣿⠏⠁⠀⠀⠀⠀⢁⡕⣜⡫⣿⣋⡁⣟⠀  ⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡧⢹⣿⣿⡽⠷⣏⠢⠉⢹⣷⠃⢿⡇⣿⣿⢸⡟⠀⠤⠄⡂⠀⠀⠉⠘⣤⣎⣽⡿⠃⠁⠄ ⠀  ⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢽⠄⢻⡝⣛⡇⠒⣁⢀⣈⣿⠀⣸⠓⢻⡾⢸⡂⠀⡯⠕⠀⠀⠀⠀⠀⠀⠃⠙⠀⠀⠃  ⠀ ⠀ ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢬⡲⣌⠙⣑⣆⣴⣶⣿⣿⣷⢤⣇⠀⠸⡠⠈⡷⠈⣥⣷⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀     ⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⣭⣾⢿⢻⣿⣿⣿⣿⣿⣞⣿⣆⣀⠀⠸⠀⣼⣿⣿⣿⣿⣿⠃⢠⣀⠀⠀ ⠀     ⠀ ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣹⣦⣿⣿⣿⣿⣿⣿⡇⠈⠁⣀⠀⠀⢀⠻⣿⣿⣿⣿⠟⠀⠠⠛⠆⠀⠀⠀       ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⣹⣯⣿⣾⣡⣁⣴⣿⣶⣿⠗⠀⠐⢾⣽⣦⠀⢉⡁⠀⣒⡧⠊⠀⠐⠀⠀⠀⠀ ⠀⠀⠀  ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣽⣟⣽⣷⡶⡽⠉⢻⣿⣆⣱⣶⡾⠉⠀⢍⣄⣲⠖⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣯⣽⠤⡃⠀⠀⠀⣀⣈⣻⣿⣡⠀⡀⠀⠀⠀⠈⠀⡀⡠⠷⠂⠀⠀⠀⠀    ⠀ ⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣚⣯⣶⢯⣩⣗⢤⢚⣻⡶⠿⠿⠿⣧⠆⠀⠁⢤⠀⠐⠈⠀⡀⠀⠀⠀⠀⠀ ⠀  ⠀  ",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣨⢟⣿⣿⣿⣿⣮⣷⣯⣤⣂⣅⢂⣐⣠⢴⣸⣄⣆⢠⡀⠄⠀⠀⠀⠀⠀⠀⠀⠀     ⠀",
    },

    buttons = {
      { "  Find File", "󱁐 f f", "Telescope find_files" },
      { "󰈚  Recent Files", "󱁐 f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "󱁐 f w", "Telescope live_grep" },
      { "  Bookmarks", "󱁐 m a", "Telescope marks" },
      { "  Themes", "󱁐 t h", "Telescope themes" },
      { "  Mappings", "󱁐 c s", "NvCheatsheet" },
    },
  },
}

M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
