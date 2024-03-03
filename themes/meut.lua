local M = {}

M.base_30 = {
  white = "#c2c4c2",
  darker_black = "#111115",
  black = "#111517",  --  nvim bg
  black2 = "#161b1d",
  one_bg = "#272b2e", -- real bg of onedark
  one_bg2 = "#303437",
  one_bg3 = "#3a3e41",
  grey = "#44484b",
  grey_fg = "#4a4e51",
  grey_fg2 = "#515558",
  light_grey = "#565a5d",
  red = "#cc6666",
  baby_pink = "#d09eb7",
  pink = "#a54242",
  line = "#303437", -- for lines like vertsplit
  green = "#6a9440",
  vibrant_green = "#98bd68",
  nord_blue = "#5a7d82",
  blue = "#576d9f",
  yellow = "#d08666",
  sun = "#e7ae77",
  purple = "#ac8eb6",
  dark_purple = "#766991",
  teal = "#8fb4b5",
  orange = "#e7ae77",
  cyan = "#5a7d82",
  statusline_bg = "#21282c",
  lightbg = "#303437",
  pmenu_bg = "#99c366",
  folder_bg = "#8aaece",
}

M.base_16 = {
  base00 = "#111517",
  base01 = "#21282c",
  base02 = "#2b363b",
  base03 = "#44484b",
  base04 = "#717171",
  base05 = "#b1b4b1",
  base06 = "#bec1be",
  base07 = "#c2c4c2",
  base08 = "#e7ae77",
  base09 = "#d08666",
  base0A = "#98bd68",
  base0B = "#6a9440",
  base0C = "#8aaece",
  base0D = "#5a7d82",
  base0E = "#cc6666",
  base0F = "#766991",
}

M.type = "dark"

M = require("base46").override_theme(M, "meut")

return M
