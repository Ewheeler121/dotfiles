vim.keymap.set("n", "<C-k>", ":NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", ":NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", ":NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ":NvimTmuxNavigateRight<CR>", { silent = true })

vim.keymap.set("n", "<C-\\>", ":NvimTmuxNavigateNext<CR>", { silent = true })
vim.keymap.set("n", "<C-space>", ":NvimTmuxNavigateLastActive<CR>", { silent = true })
