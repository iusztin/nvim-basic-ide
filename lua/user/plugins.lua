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
  use { "wbthomason/packer.nvim", commit = "ed2d5c9c17f4df2eeaca4878145fecc9669e0138" }
  use { "nvim-lua/plenary.nvim", version = "v0.1.3" }
  use { "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" }
  use { "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" }
  use { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" }
  use { "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" }
  use { "akinsho/toggleterm.nvim", commit = "12cba0a1967b4f3f31903484dec72a6100dcf515" }
  use { "ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" }
  use { "lukas-reineke/indent-blankline.nvim", commit = "9637670896b68805430e2f72cf5d16be5b97a22a" } -- v2
  use { "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" }
  use { "folke/which-key.nvim", version = "v1.5.1" }

  -- Vim UI enhancements
  use { "stevearc/dressing.nvim", commit = "12b808a6867e8c38015488ad6cee4e3d58174182" }

  -- Session management
  use { "Shatur/neovim-session-manager", commit = "4883372b1ef2bdcf4cbdac44c98d68c216914462" }

  -- File browser
  use({
    "lmburns/lf.nvim",
    requires = { "plenary.nvim", "toggleterm.nvim" },
    commit = "69ab1efcffee6928bf68ac9bd0c016464d9b2c8b",
  })

  -- Colorschemes
  use { "folke/tokyonight.nvim", commit = "4092905fc570a721128af73f6bf78e5d47f5edce" }
  use { "lunarvim/darkplus.nvim", commit = "2584cdeefc078351a79073322eb7f14d7fbb1835" }
  use { "EdenEast/nightfox.nvim", version = "v3.5.1" }
  use { "ishan9299/nvim-solarized-lua", commit = "b5a77b50d1136ad4018d176722378506afee9d3a" }

  -- cmp plugins
  use { "hrsh7th/nvim-cmp", commit = "c4e491a87eeacf0408902c32f031d802c7eafce8" }
  use { "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" } -- buffer completions
  use { "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" } -- path completions
  use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp", commit = "44b16d11215dce86f253ce0c30949813c0a90765" }
  use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

  -- snippets
  use { "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" } --snippet engine
  use { "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" } -- a bunch of snippets to use

  -- LSP
  use { "neovim/nvim-lspconfig", commit = "67f151e84daddc86cc65f5d935e592f76b9f4496" } -- enable LSP
  use { "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" } -- for formatters and linters
  use { "RRethy/vim-illuminate", commit = "76f28e858f1caae87bfa45fb4fd09e4b053fc45b" } -- highlight & search word under cursor

  -- LSP installer
  use { "williamboman/mason.nvim", version = "v1.6.2" }
  use { "williamboman/mason-lspconfig.nvim", version = "v1.12.0" }

  -- Searching
  use { "nvim-telescope/telescope.nvim", version = "v0.1.2" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make", commit = "65c0ee3d4bb9cb696e262bca1ea5e9af3938fc90" }
  use { "nvim-telescope/telescope-live-grep-args.nvim", commit = "32b633b062d1168a2d18ad27994e5b4ef97f0a74" }
  use { "junegunn/fzf", commit = "cefa6b9878b1c5e8228debfb74ad6e7f689f2077" }
  use { "junegunn/fzf.vim", commit = "9ceac718026fd39498d95ff04fa04d3e40c465d7" }
  use { "ggandor/leap.nvim", commit = "a9d3232b178fddabb6660dc19abf40e05d6841b0" }

  -- Text parsing
  use {
    "nvim-treesitter/nvim-treesitter",
    version = "v0.9.0",
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
  use {
    'nmac427/guess-indent.nvim',
    commit = "c37467baa1a51b74ed767cbe0540fce44e03d828",
    config = function() require('guess-indent').setup {} end,
  }
  use({
    'Wansmer/treesj',
    requires = { 'nvim-treesitter' },
    commit = "3203aa553217921fd4dcb79245f9df07278910b2",
    config = function()
      require('treesj').setup({
        max_join_length = 5000,
        use_default_keymaps = false,
      })
    end,
  })

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
