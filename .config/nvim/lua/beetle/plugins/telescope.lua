return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files in working dir" })
        vim.keymap.set('n', '<C-p>', builtin.git_files, {}, { desc = "Find git files not in .gitignore" })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live grep in working dir" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find open buffers" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Search help tags" })
    end
}
