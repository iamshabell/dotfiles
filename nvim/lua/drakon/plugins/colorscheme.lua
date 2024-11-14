return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Options are latte, frappe, macchiato, mocha
      transparent_background = true, -- Enable transparent background
      show_end_of_buffer = false, -- Shows '~' characters after the end of buffers
      term_colors = false, -- Set terminal colors
      dim_inactive = {
        enabled = false, -- Dim inactive windows
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false, -- Disable italics if true
      no_bold = false, -- Disable bold if true
      no_underline = false, -- Disable underline if true
      styles = { -- Customize style for specific syntax groups
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {}, -- Override specific colors if needed
      custom_highlights = {}, -- Customize highlight groups
      integrations = {
        cmp = true, -- Enable integration with cmp
        gitsigns = true, -- Enable integration with gitsigns
        nvimtree = true, -- Enable integration with nvim-tree
        treesitter = true, -- Enable integration with treesitter
        notify = false, -- Disable integration with notify
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })

    -- Set the colorscheme to catppuccin mocha
    vim.cmd.colorscheme("catppuccin")
  end,
}
