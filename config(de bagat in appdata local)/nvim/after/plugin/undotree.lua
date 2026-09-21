-- Salvează istoricul de undo pe disc (persistent undo)
vim.opt.undofile = true

local undo_dir = vim.fn.stdpath("data") .. "/undo"
if vim.fn.isdirectory(undo_dir) == 0 then
    vim.fn.mkdir(undo_dir, "p")
end
vim.opt.undodir = undo_dir

-- Folosim calea scurtă de DOS (PROGRA~1) pentru a evita spațiul din Program Files
vim.g.undotree_DiffCommand = "C:\\PROGRA~1\\Git\\usr\\bin\\diff.exe"

-- Scurtătura pentru toggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)



vim.g.undotree_HighlightChangedText = 1
vim.g.undotree_HighlightChangedWithSignCB = 0


vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_TreeNodeShape = '*'
