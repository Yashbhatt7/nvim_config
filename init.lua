require("wonderer")

vim.opt.guicursor = "n-v-c:block,i:block-blinkwait300-blinkon200-blinkoff150"
vim.g.python3_host_prog = '/usr/bin/python3.13'


-- vim.o.cmdheight = 0

-- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })

-- Prevent Alt + f from triggering any action in Insert mode
vim.api.nvim_set_keymap('i', '<A-f>', '<Esc>', { noremap = true, silent = true })

-- Prevent Alt + f from triggering any action in Normal mode (if needed)
vim.api.nvim_set_keymap('n', '<A-f>', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<Up>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Down>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Left>', '<NOP>', { noremap = true })
vim.api.nvim_set_keymap('i', '<Right>', '<NOP>', { noremap = true })



