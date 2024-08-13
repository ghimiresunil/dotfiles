return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      local bg = "#1E1E28"
      local bg_dark = "#1A1A23"
      local bg_highlight = "#2A2A37"
      local bg_search = "#394260"
      local bg_visual = "#3C3F58"
      local fg = "#D6D6E8"
      local fg_dark = "#BFC0D4"
      local fg_gutter = "#6F7387"
      local border = "#4F5674"

      require('catppuccin').setup({
        flavor = "mocha", -- can be latte, frappe, macchiato, mocha
        transparent_background = true,
        term_colors = true,
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_highlight = bg_highlight
          colors.bg_search = bg_search
          colors.bg_visual = bg_visual
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_gutter = fg_gutter
          colors.border = border
        end,
      })
      
      -- load the colorscheme
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}

