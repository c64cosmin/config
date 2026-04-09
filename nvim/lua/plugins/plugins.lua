return {
  {
    "easymotion/vim-easymotion",
  },
  {
    "mbbill/undotree",
  },
  {
    "hrsh7th/cmp-buffer",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  {
    "hrsh7th/cmp-nvim-lua",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "hrsh7th/cmp-vsnip",
  },
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/vim-vsnip",
  },
  {
    "stevearc/conform.nvim",
    opts = {},
  },
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    -- To avoid being surprised by breaking changes,
    -- I recommend you set a version range
    version = "^9",
    -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
    -- No need for lazy.nvim to lazy-load it.
    lazy = false,
  },
}
