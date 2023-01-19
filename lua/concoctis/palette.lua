local M = {}

function M.get_palette()
  local theme
  local dark = {
    bg0 = "#191a1a",
    bg1 = "#202121",
    bg = "#292828",
    bg2 = "#32302f",
    bg3 = "#383432",
    bg4 = "#3c3836",
    bg5 = "#45403d",
    bg6 = "#504945",
    bg7 = "#5a524c",
    bg8 = "#665c54",
    bg9 = "#7c6f64",
    grey0 = "#7c6f64",
    grey1 = "#928374",
    grey2 = "#a89984",
    fg0 = "#ddc7a1",
    fg = "#d4be98",
    fg1 = "#c5b18d",
    red = "#ea6962",
    orange = "#e78a4e",
    yellow = "#d8a657",
    green = "#a9b665",
    aqua = "#89b482",
    blue = "#7daea3",
    purple = "#d3869b",
    darkRed = "#b85651",
    darkOrange = "#bd6f3e",
    darkYellow = "#c18f41",
    darkGreen = "#8f9a52",
    darkAqua = "#72966c",
    darkBlue = "#68948a",
    darkPurple = "#ab6c7d",
    selGreen = "#3b4439",
    selRed = "#4c3432",
    selBlue = "#374141",
    diffGreen = "#34381b",
    diffRed = "#402120",
    diffBlue = "#0e363e",
    shadow = "#00000070",
  }

  local light = {
    bg0 = "#f2e5bc",
    bg1 = "#f6ebc1",
    bg = "#fbf1c7",
    bg2 = "#f2e5bc",
    bg3 = "#eee0b7",
    bg4 = "#ebdbb2",
    bg5 = "#e0cfa9",
    bg6 = "#d5c4a1",
    bg7 = "#c9b99a",
    bg8 = "#bdae93",
    bg9 = "#a89984",
    grey0 = "#a89984",
    grey1 = "#928374",
    grey2 = "#7c6f64",
    fg0 = "#4f3829",
    fg = "#654735",
    fg1 = "#6f4f3c",
    red = "#c14a4a",
    orange = "#c35e0a",
    yellow = "#b47109",
    green = "#6c782e",
    aqua = "#4c7a5d",
    blue = "#45707a",
    purple = "#945e80",
    darkRed = "#ea6962",
    darkOrange = "#e78a4e",
    darkYellow = "#d8a657",
    darkGreen = "#a9b665",
    darkAqua = "#89b482",
    darkBlue = "#7daea3",
    darkPurple = "#d3869b",
    selGreen = "#dde5c2",
    selRed = "#f6d2ba",
    selBlue = "#d9e1cc",
    diffGreen = "#e3f6b4",
    diffRed = "#ffdbcc",
    diffBlue = "#cff1f6",
    shadow = "#3c383620",
  }

  if vim.o.background == "dark" then
    theme = dark
  else
    theme = light
  end

  return theme
end

return M
