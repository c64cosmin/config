return {
    {
        "tree-sitter/tree-sitter",
    },
    {
        "easymotion/vim-easymotion",
    },
    {
        "mbbill/undotree",
    },
    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        'mrcjkb/rustaceanvim',
        -- To avoid being surprised by breaking changes,
        -- I recommend you set a version range
        version = '^9',
        -- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
        -- No need for lazy.nvim to lazy-load it.
        lazy = false,
    },
}
