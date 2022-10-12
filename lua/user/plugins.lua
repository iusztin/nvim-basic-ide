local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use { "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" } -- Useful lua functions used by lots of plugins
  use { "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" }
  use { "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" }
  use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" }
  use { "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" }
  use { "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" }
  use { "ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" }
  use { "lewis6991/impatient.nvim", commit = "969f2c5c90457612c09cf2a13fee1adaa986d350" }
  use { "lukas-reineke/indent-blankline.nvim", version = "2.20" }
  use { "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" }
  use("folke/which-key.nvim")

  -- Vim UI enhancements
  use { "stevearc/dressing.nvim", commit = "12b808a6867e8c38015488ad6cee4e3d58174182" }

  -- Session management
  use { "Shatur/neovim-session-manager", commit = "4005dac93f5cd1257792259ef4df6af0e3afc213" }

  -- File browser
  use({
    "lmburns/lf.nvim",
    requires = { "plenary.nvim", "toggleterm.nvim" },
    commit = "05bacf60ac80dd079e2b8a353cd807a5cbedf73a",
  })

  -- Colorschemes
  use { "folke/tokyonight.nvim", commit = "4092905fc570a721128af73f6bf78e5d47f5edce" }
  use { "lunarvim/darkplus.nvim", commit = "2584cdeefc078351a79073322eb7f14d7fbb1835" }
  use { "EdenEast/nightfox.nvim", commit = "59c3dbcec362eff7794f1cb576d56fd8a3f2c8bb" }
  use { "ishan9299/nvim-solarized-lua", commit = "b5a77b50d1136ad4018d176722378506afee9d3a" }

  -- cmp plugins
  use { "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" } -- The completion plugin
  use { "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" } -- buffer completions
  use { "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" } -- path completions
  use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
  use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

  -- snippets
  use { "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" } --snippet engine
  use { "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" } -- a bunch of snippets to use

  -- LSP
  use { "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" } -- enable LSP
  use { "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" }

  -- LSP installer
  use { "williamboman/mason.nvim", commit = "d06095e26375fde04134adab2f2f5372e93d5dd8" }
  use { "williamboman/mason-lspconfig.nvim", commit = "0eb7cfefbd3a87308c1875c05c3f3abac22d367c" }

  -- Searching
  use { "nvim-telescope/telescope.nvim", tag = "0.1.0" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make", commit = "65c0ee3d4bb9cb696e262bca1ea5e9af3938fc90" }
  use { "nvim-telescope/telescope-live-grep-args.nvim", commit = "32b633b062d1168a2d18ad27994e5b4ef97f0a74" }
  use { "junegunn/fzf", commit = "cefa6b9878b1c5e8228debfb74ad6e7f689f2077" }
  use { "junegunn/fzf.vim", commit = "9ceac718026fd39498d95ff04fa04d3e40c465d7" }

  -- Text parsing
  use {
    "nvim-treesitter/nvim-treesitter",
    commit = "aebc6cf6bd4675ac86629f516d612ad5288f7868",
  }
  use {
    "nvim-treesitter/nvim-treesitter-textobjects",
    commit = "e63c2ff8e38fad77299dd74e14c7c9360e1b3181",
  }
  use { "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" }

  -- Text mutation
  use {
    "kylechui/nvim-surround",
    commit = "17191679202978b1de8c1bd5d975400897b1b92d", -- v2.0-beta
  }
  use { "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" } -- Autopairs, integrates with both cmp and treesitter
  use { "numToStr/Comment.nvim", commit = "2c26a00f32b190390b664e56e32fd5347613b9e2" }

  -- Git
  use { "lewis6991/gitsigns.nvim", tag = "v0.5" }
  use {
    "ruifm/gitlinker.nvim",
    requires = "nvim-lua/plenary.nvim",
    commit = "782e98dd1f8f2c97186b13b5c59a472b585a4504",
  }
  use { "kdheepak/lazygit.nvim", commit = "9c73fd69a4c1cb3b3fc35b741ac968e331642600" }

  -- DAP
  use { "mfussenegger/nvim-dap", commit = "014ebd53612cfd42ac8c131e6cec7c194572f21d" }
  use { "rcarriga/nvim-dap-ui", commit = "d76d6594374fb54abf2d94d6a320f3fd6e9bb2f7" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
