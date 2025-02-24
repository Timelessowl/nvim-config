dofile(vim.g.base46_cache .. "telescope")

return {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = " ",
    entry_prefix = " ",
    theme = "cattpuccin",
    layout_config = {
      width = 0.75,
      height = 0.65,
      preview_cutoff = 120,
      horizontal = { width_padding = 0.1, height_padding = 0.1 },
      vertical = { width_padding = 0.05, height_padding = 1, preview_height = 0.5 },
    },
    sorting_strategy = "ascending",
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
      },
      n = {
        ["q"] = require("telescope.actions").close,
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
      },
    },
  },

  extensions_list = { "themes", "terms" },
  extensions = {
    cmdline = {
      -- Adjust telescope picker size and layout
      picker = {
        layout_config = {
          width = 120,
          height = 25,
        },
      },
      -- Adjust your mappings
      mappings = {
        complete = "<Tab>",
        run_selection = "<C-CR>",
        run_input = "<CR>",
      },
      -- Triggers any shell command using overseer.nvim (`:!`)
      overseer = {
        enabled = true,
      },
    },
  },
  pickers = {
    lsp_code_actions = {
      layout_strategy = "vertical",
      layout_config = {
        height = 0.8,
        width = 0.6,
      },
    },
  },
}
