return {
    'tpope/vim-surround',
    'christoomey/vim-tmux-navigator',
    { "numToStr/Comment.nvim", config = true },
    { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {} },
    -- for working with the neovim dotfiles
    { "folke/neodev.nvim",     opts = {},             priority = 999 },
}
