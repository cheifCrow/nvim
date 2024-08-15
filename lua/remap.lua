local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
