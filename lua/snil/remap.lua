local nnoremap = require("snil.keymap").nnoremap

nnoremap("<SPACE>", "<Nop>")

-- vim-tree mappings
nnoremap("<Leader>tf", "<Cmd>NvimTreeFocus<CR>")
nnoremap("<Leader>tt", "<Cmd>NvimTreeToggle<CR>")
