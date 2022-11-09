local nnoremap = require("snil.keymap").nnoremap
local vnoremap = require("snil.keymap").vnoremap

-- move lines
nnoremap("<A-k>", "<cmd>m .-2<cr>")
nnoremap("<A-j>", "<cmd>m .+1<cr>")
nnoremap("<A-l>", ">>")
nnoremap("<A-h>", "<<")

vnoremap("<A-j>", ":m '>+1<CR>gv")
vnoremap("<A-k>", ":m '<-2<CR>gv")
vnoremap("<A-h>", ":<<CR>gv")
vnoremap("<A-l>", ":><CR>gv")
