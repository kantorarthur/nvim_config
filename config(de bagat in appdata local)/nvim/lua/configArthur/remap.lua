vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", function()
  vim.cmd("Neotree position=current reveal")
end)

vim.keymap.set({ "n", "x" }, "J", "<Nop>")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.api.nvim_create_user_command("Term", function()
    vim.cmd("botright vsplit | terminal")
    vim.cmd("startinsert")
end, {})

vim.keymap.set('n', '<leader>r', ':w<CR>:!g++ -std=c++26 % -o %< && %<.exe<CR>', { desc = 'Compile & Run C++26' })


vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])


-- Nu salvează în registru la ștergerea cu 'd' sau 'D'
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true })

-- Nu salvează în registru la ștergerea unui singur caracter cu 'x'
vim.keymap.set({'n', 'v'}, 'x', '"_x', { noremap = true })

-- Opțional: Nu salvează în registru nici când înlocuiești text prin 'c' (change)
vim.keymap.set({'n', 'v'}, 'c', '"_c', { noremap = true })
vim.keymap.set({'n', 'v'}, 'C', '"_C', { noremap = true })
