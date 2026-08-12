local spec = {
  { "<leader>e", function() Snacks.explorer.reveal() end, desc = "Explorer" },
  { "<leader>w", "<cmd>w!<CR>", desc = "Save" },
  { "<leader>q", "<cmd>qall!<CR>", desc = "Quit" },
  { "<leader>c", function() Snacks.bufdelete() end, desc = "Close Buffer" },
  { "<leader>h", "<cmd>nohlsearch<CR>", desc = "Disable highlights" },
  { "<leader>u", function() Snacks.picker.undo() end, desc = "Undo history" },

  -- Find
  { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
  { "<leader>ft", function() Snacks.picker.grep() end, desc = "Live grep" },
  { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
  { "<leader>fh", function() Snacks.picker.help() end, desc = "Find Help" },
  { "<leader>fM", function() Snacks.picker.man() end, desc = "Man Pages" },
  { "<leader>fr", function() Snacks.picker.recent() end, desc = "Open Recent File" },
  { "<leader>fR", function() Snacks.picker.registers() end, desc = "Registers" },
  { "<leader>fk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
  { "<leader>fC", function() Snacks.picker.commands() end, desc = "Commands" },
  { "<leader>fl", function() Snacks.picker.resume() end, desc = "Last search" },
  { "<leader>fw", function() Snacks.picker.grep_word() end, desc = "Current word" },

  -- Session
  { "<leader>sf", "<cmd>SessionManager load_session<CR>", desc = "Find" },
  { "<leader>sc", "<cmd>SessionManager load_current_dir_session<CR>", desc = "Current dir" },
  { "<leader>sl", "<cmd>SessionManager load_last_session<CR>", desc = "Last" },
  { "<leader>ss", "<cmd>SessionManager save_current_session<CR>", desc = "Save" },
  { "<leader>sD", "<cmd>SessionManager delete_session<CR>", desc = "Delete" },

  -- Git
  { "<leader>gy", function() require("utils.git").browse_upstream_default() end, desc = "Git link" },
  { "<leader>gf", function() Snacks.picker.git_status() end, desc = "Open changed file" },
  { "<leader>ge", function() Snacks.explorer() end, desc = "Explore" },
  { "<leader>gg", function() Snacks.lazygit() end, desc = "LazyGit" },

  -- Text
  { "<leader>ts", "<cmd>TSJToggle<cr>", desc = "Split/Join" },
  { "<leader>tS", "<cmd>lua require('treesj').toggle({ split = { recursive = true } })<cr>", desc = "Split/Join recursively" },

  -- Buffers
  { "<leader>by", "<cmd>let @+ = expand(\"%:.\")<CR>", desc= "Yank relative path" },
  { "<leader>bC", function() Snacks.bufdelete.all() end, desc = "Close all buffers" },
  { "<leader>bs", "<cmd>BufferLineSortByDirectory<CR>", desc = "Sort buffers by directory" },
  { "<leader>bf", function() Snacks.picker.buffers() end, desc = "Find buffer" },
  { "<leader>b/", function() Snacks.picker.lines() end, desc = "Find in current buffer" },
  { "<leader>be", function() Snacks.picker.buffers() end, desc = "Explore" },

  -- LSP
  { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
  {
    "<leader>ld",
    function() Snacks.picker.diagnostics_buffer() end,
    desc = "Document Diagnostics",
  },
  {
    "<leader>lw",
    function() Snacks.picker.diagnostics() end,
    desc = "Workspace Diagnostics",
  },
  { "<leader>lf","<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format" },
  { "<leader>li","<cmd>checkhealth vim.lsp<cr>", desc = "Info" },
  { "<leader>lI","<cmd>LspInstall<cr>", desc = "Install" },
  { "<leader>lM","<cmd>Mason<cr>", desc = "Mason" },
  {
    "<leader>lj",
    function() vim.diagnostic.jump({ count = 1, float = true }) end,
    desc = "Next Diagnostic",
  },
  {
    "<leader>lk",
    function() vim.diagnostic.jump({ count = -1, float = true }) end,
    desc = "Prev Diagnostic",
  },
  { "<leader>ll","<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
  { "<leader>lq","<cmd>lua vim.diagnostic.setloclist()<cr>", desc = "Quickfix" },
  { "<leader>lr","<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
  { "<leader>ls","<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Signature" },
  { "<leader>lt", function() Snacks.picker.lsp_type_definitions() end, desc = "Type definitions" },
  { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Definitions" },
  { "gr", function() Snacks.picker.lsp_references() end, desc = "References" },
  { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Implementations" },
  { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Declarations" },
}

return function()
  require("which-key").setup({
    spec = spec,
  })
end
