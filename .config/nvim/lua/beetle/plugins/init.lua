return {
    'tpope/vim-surround',
    'christoomey/vim-tmux-navigator',
    { 'lewis6991/gitsigns.nvim', config = true },
    { "numToStr/Comment.nvim",   config = true },
    { 'windwp/nvim-autopairs',   event = "InsertEnter", opts = {} },
    -- for working with the neovim dotfiles
    { "folke/neodev.nvim",       opts = {},             priority = 999 },
}
