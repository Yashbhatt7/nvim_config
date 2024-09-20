require("theprimeagen")

vim.opt.guicursor = "n-v-c:block,i:block-blinkwait300-blinkon200-blinkoff150"

-- Prevent Alt + f from triggering any action in Insert mode
vim.api.nvim_set_keymap('i', '<A-f>', '<Esc>', { noremap = true, silent = true })

-- Prevent Alt + f from triggering any action in Normal mode (if needed)
vim.api.nvim_set_keymap('n', '<A-f>', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<Up>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Down>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Left>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Right>', '<NOP>', { noremap = true })




