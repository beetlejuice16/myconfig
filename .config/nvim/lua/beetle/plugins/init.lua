return {
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },
    'tpope/vim-surround',
    'christoomey/vim-tmux-navigator',
    { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {} },
}
