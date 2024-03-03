return {
    'preservim/vim-pencil',
    config = function()
        vim.g['pencil#wrapModeDefault'] = 'soft'
        vim.g['pencil#conceallevel'] = 2
    end,
    ft = "markdown",
}
