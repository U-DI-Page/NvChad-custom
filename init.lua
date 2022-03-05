-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/

-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")

-- Fast Move
map("n", "H", "5l")
map("n", "J", "5j")
map("n", "K", "5k")
map("n", "L", "5l")

-- Quit
map("n", "<C-q>", ":q! <CR>")

-- Move text up and down
map("v", "<C-K>", ":move '<-2<CR>gv-gv")
map("v", "<C-J>", ":move '>+1<CR>gv-gv")
 
-- Inster a empty row in normal mode
map("n", "<Enter>", "o<ESC>")
