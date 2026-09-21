vim.g.mapleader = " "
vim.keymap.set("n", "<leade>pv", vim.cmd.Ex)

vim.keymap.set({ "n", "x" }, "J", "<Nop>")
vim.keymap.set("x", "<leader>p", "\"_DP")

vim.api.nvim_create_user_command("Term", function()
    vim.cmd("botright vsplit | terminal")
    vim.cmd("startinsert")
end, {})

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
