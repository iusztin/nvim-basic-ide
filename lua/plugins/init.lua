local function github(repo)
  return "https://github.com/" .. repo
end

local function codeberg(repo)
  return "https://codeberg.org/" .. repo
end

local function major(version)
  return vim.version.range(tostring(version))
end

vim.pack.add({
  -- Shared dependencies
  github("nvim-lua/plenary.nvim"),
  github("nvim-tree/nvim-web-devicons"),
  github("rafamadriz/friendly-snippets"),

  -- Editor foundations
  { src = github("nvim-treesitter/nvim-treesitter"), version = "main" },
  github("Darazaki/indent-o-matic"),
  -- Optional nvim-surround dependency: treesitter-textobjects.
  { src = github("nvim-treesitter/nvim-treesitter-textobjects"), version = "main" },
  { src = github("kylechui/nvim-surround"), version = major(4) },
  { src = codeberg("andyg/leap.nvim"), name = "leap.nvim" },
  github("Wansmer/treesj"),

  -- UI
  { src = github("folke/snacks.nvim"), version = major(2) },
  { src = github("EdenEast/nightfox.nvim"), version = major(3) },
  { src = github("akinsho/bufferline.nvim"), version = major(4) },
  github("nvim-lualine/lualine.nvim"),
  { src = github("folke/which-key.nvim"), version = major(3) },
  { src = github("MeanderingProgrammer/render-markdown.nvim"), version = major(8) },

  -- Git and sessions
  { src = github("lewis6991/gitsigns.nvim"), version = major(2) },
  github("Shatur/neovim-session-manager"),

  -- Completion and LSP
  { src = github("saghen/blink.cmp"), version = major(1) },
  { src = github("mason-org/mason.nvim"), version = major(2) },
  { src = github("neovim/nvim-lspconfig"), version = major(2) },
  { src = github("mason-org/mason-lspconfig.nvim"), version = major(2) },
}, { confirm = false, load = true })

-- Plugins are loaded eagerly, so setup order is explicit and reproducible.
local setup_modules = {
  "plugins.snacks",
  "plugins.colorscheme",
  "plugins.treesitter",
  "plugins.editor",
  "plugins.leap",
  "plugins.treesj",
  "plugins.bufferline",
  "plugins.completions",
  "plugins.lsp",
  "plugins.lualine",
  "plugins.markdown",
  "plugins.session-manager",
  "plugins.whichkey",
}

for _, module in ipairs(setup_modules) do
  require(module)()
end
