vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Oil, { desc = 'Open Oil' })
vim.keymap.set("n", "<leader>pc", ":Oil --float<cr>", { silent = true, desc = 'Open Oil in float' })

-- move selection up and down with capital J,K when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move selection down" })

-- keep cursor at same position when appending lines
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in center when half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search terms in the center when jumping between them
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep current paste buffer when replacing a highlighted word
vim.keymap.set("x", "<leader>p", "\"_dP")

-- use space+y to yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank into system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")
-- same but with delete
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "Delete into system clipboard" })
vim.keymap.set("v", "<leader>d", "\"_d")

-- replace the word you are on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace the word under the cursor" })

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file executable" })

vim.keymap.set("i", "<C-c>", "<Esc>")
