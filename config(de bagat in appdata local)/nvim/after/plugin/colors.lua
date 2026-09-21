require('rose-pine').setup({
	styles = {
		bold = true, 
		italiac = false,
		transparency = false,
	},
})



function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal",  { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat",  { bg = "none" })

	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
end
ColorMyPencils()
