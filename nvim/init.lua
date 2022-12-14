require("settings")
require("mappings")
require("plugins")
require("nvimlsp")
require("nvimcmp")
require("autocmds")
require("theme")

-- lualine.nvim
require("lualine").setup()

-- luatab.nvim
require("luatab").setup()

-- nvim-brackets
require("nvim-brackets")

-- nvim-treesitter
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
})

-- lsp_signature.nvim
require("lsp_signature").setup({
  floating_window = false,
  hint_scheme = "SignatureHint",
  hint_prefix = "",
})

-- telescope.nvim
local actions = require("telescope.actions")
require('telescope').setup {
  pickers = {
    buffers = {
      sort_lastused = true,
    }
  },
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-f>"] = actions.preview_scrolling_down,
        ["<C-b>"] = actions.preview_scrolling_up,
        ["<A-->"] = actions.delete_buffer,
        ["<Esc>"] = actions.close,
        ["<C-h>"] = "which_key",
      }
    }
  }
}
