vim.keymap.set('n', '<leader>h', 'nohlsearch<CR>')
-- vim.keymap.set('i', '', '<esc>')

vim.g.mapleader = "\\"
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("x", "<leader>p", "\"dP")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.keymap.set()
