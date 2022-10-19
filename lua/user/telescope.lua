local actions = require("telescope.actions")
local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "absolute" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },

  extensions = {
    live_grep_args = {
      auto_quoting = true,
      default_mappings = {},
      mappings = { -- extend mappings
        i = {
          ["<C-f>"] = lga_actions.quote_prompt({ postfix = ' -ig ' }),
        },
      }
    }
  }
}
telescope.load_extension("live_grep_args")
telescope.load_extension("fzf")
telescope.load_extension("lazygit")
