--This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({
      "rose-pine/neovim",
      name = "rose-pine",
      config = function()
          vim.cmd("colorscheme rose-pine")
      end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')


  -- LSP Management
  use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
  }

  -- Autocompletare (cmp)
  use 'hrsh7th/nvim-cmp'         -- engine-ul prinicpal de cmp 
  use 'hrsh7th/cmp-nvim-lsp'     -- Sursa de autocompletare din LSP
  use 'L3MON4D3/LuaSnip'         -- Snippet engine (necesar pt cmp)  


use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    config = function()

        vim.api.nvim_set_hl(0, "NeotreeBreadcrumbOrigin", {
            fg = "#eb6f92",
            bold = true
        })

        vim.api.nvim_set_hl(0, "NeotreeBreadcrumbIntermediate", {
            fg = "#f6c177",
            bold = true
        })

        require("neo-tree").setup({
            window = {
                position = "left",
            },

            filesystem = {
                bind_to_cwd = false,

                follow_current_file = {
                    enabled = true,
                },

                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },

                components = {
                    name = function(config, node, state)
                        local cc = require("neo-tree.sources.common.components")
                        local result = cc.name(config, node, state)

                        if node.type == "directory" and node.path == state.path then
                            result.text = ".. " .. vim.fn.fnamemodify(node.path, ":~")
                            return result
                        end

                        if state.origin_path and node.type == "directory" then
                            if node.path == state.origin_path then
                                result.highlight = "NeotreeBreadcrumbOrigin"
                            elseif vim.startswith(state.origin_path, node.path .. "/") then
                                result.highlight = "NeotreeBreadcrumbIntermediate"
                            end
                        end

                        return result
                    end,
                },

                window = {
                    mappings = {
                        ["<CR>"] = function(state)
                            local node = state.tree:get_node()
                            if not node then
                                return
                            end

                            if node.path == state.path then
                                local parent_dir = vim.fs.dirname(state.path)

                                if parent_dir and parent_dir ~= state.path then
                                    local origin = state.origin_path

                                    if not origin or not vim.startswith(origin, state.path) then
                                        origin = state.path
                                    end

                                    state.origin_path = origin

                                    require("neo-tree.sources.filesystem")
                                        .navigate(state, parent_dir, origin)
                                end

                            elseif node.type == "directory" then
                                require("neo-tree.sources.filesystem")
                                    .toggle_directory(state, node)

                            else
                                require("neo-tree.sources.filesystem.commands")
                                    .open(state)
                            end
                        end,
                    },
                },
            },
        })
    end,
}

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if vim.fn.argc() == 0 then
            vim.cmd("Neotree position=left")
        end
    end,
})
end)
