local spec = {
  { "<leader>e", "<cmd>Neotree reveal float<cr>", desc = "Explorer (Neotree)" },
  { "<leader>w", "<cmd>w!<CR>", desc = "Save" },
  { "<leader>q", "<cmd>qall!<CR>", desc = "Quit" },
  { "<leader>c", "<cmd>bd<CR>", desc = "Close Buffer" },
  { "<leader>h", "<cmd>nohlsearch<CR>", desc = "Disable highlights" },

  -- Find
  { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
  { "<leader>ft", "<cmd>Telescope live_grep_args<CR>", desc = "Live grep" },
  { "<leader>fp", "<cmd>Telescope projects<CR>", desc = "Projects" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
  { "<leader>fM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
  { "<leader>fR", "<cmd>Telescope registers<cr>", desc = "Registers" },
  { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
  { "<leader>fC", "<cmd>Telescope commands<cr>", desc = "Commands" },
  { "<leader>fl", "<cmd>Telescope resume<cr>", desc = "Last search" },
  { "<leader>fw", "<cmd>lua require('telescope-live-grep-args.shortcuts').grep_word_under_cursor()<cr>", desc = "Current word" },

  -- Session
  { "<leader>sf", "<cmd>SessionManager load_session<CR>", desc = "Find" },
  { "<leader>sc", "<cmd>SessionManager load_current_dir_session<CR>", desc = "Current dir" },
  { "<leader>sl", "<cmd>SessionManager load_last_session<CR>", desc = "Last" },
  { "<leader>ss", "<cmd>SessionManager save_current_session<CR>", desc = "Save" },
  { "<leader>sD", "<cmd>SessionManager delete_session<CR>", desc = "Delete" },

  -- Git
  { "<leader>gy", "<cmd>GitLink default_branch<CR>", desc = "Git link" },
  { "<leader>gf", "<cmd>Telescope git_status<CR>", desc = "Open changed file" },

  -- Text
  { "<leader>ts", "<cmd>TSJToggle<cr>", desc = "Split/Join" },
  { "<leader>tS", "<cmd>lua require('treesj').toggle({ split = { recursive = true } })<cr>", desc = "Split/Join recursively" },

  -- Buffers
  { "<leader>by", "<cmd>let @+ = expand(\"%\")<CR>", desc= "Yank relative path" },
  { "<leader>bC", "<cmd>%bd<CR>", desc = "Close all buffers" },
  { "<leader>bs", "<cmd>BufferLineSortByDirectory<CR>", desc = "Sort buffers by directory" },
  { "<leader>bf", "<cmd>Telescope buffers<CR>", desc = "Find buffer" },
  { "<leader>b/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find in current buffer" },
  { "<leader>be", "<cmd>Neotree float buffers<cr>", desc = "Explore" },

  -- LSP
  { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
  {
    "<leader>ld",
    "<cmd>Telescope diagnostics bufnr=0<cr>",
    desc = "Document Diagnostics",
  },
  {
    "<leader>lw",
    "<cmd>Telescope diagnostics<cr>",
    desc = "Workspace Diagnostics",
  },
  { "<leader>lf","<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format" },
  { "<leader>li","<cmd>LspInfo<cr>", desc = "Info" },
  { "<leader>lI","<cmd>LspInstall<cr>", desc = "Install" },
  { "<leader>lM","<cmd>Mason<cr>", desc = "Mason" },
  {
    "<leader>lj",
    "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>",
    desc = "Next Diagnostic",
  },
  {
    "<leader>lk",
    "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
    desc = "Prev Diagnostic",
  },
  { "<leader>ll","<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
  { "<leader>lq","<cmd>lua vim.diagnostic.setloclist()<cr>", desc = "Quickfix" },
  { "<leader>lr","<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
  { "<leader>ls","<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature" },
  { "<leader>lt","<cmd>Telescope lsp_type_definitions<cr>", desc = "Type definitions" },
  { "gd","<cmd>Telescope lsp_definitions<cr>", desc = "Definitions" },
  { "gr","<cmd>Telescope lsp_references<cr>", desc = "References" },
  { "gI","<cmd>Telescope lsp_implementations<cr>", desc = "Implementations" },
  { "gD","<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Declarations" },
}

return {
  "folke/which-key.nvim",
  opts = {
    spec = spec,
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  }
}
