-- 1. Initializare mason (descarca servere)
require("mason").setup()

-- 2. Configurare autocompletare capabilities si lspconfig
local lspconfig = require("lspconfig")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- 3. Configurare mason-lspconfig cu handlers direct in setup
require("mason-lspconfig").setup({
  -- Serverele pe care le dorești instalate automat
  ensure_installed = { "lua_ls", "clangd", "ts_ls" },

  -- Handlers pentru fiecare server instalat
  handlers = {
    -- Handler-ul implicit (se aplica tuturor serverelor neconfigurate separat)
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = lsp_capabilities,
      })
    end,

    -- Setare speciala pentru Lua (sa nu dea warning pe variabila "vim")
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup({
        capabilities = lsp_capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
})

-- 4. Scurtături globale când un server LSP se atașează la un fișier
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP Actions',
  callback = function(event)
    local opts = { buffer = event.buf }

    -- Go to Definition (Sare la unde e definită funcția/variabila)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

    -- Afișează documentația / tipul variabilei sub cursor
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

    -- Redenumește variabila peste tot în scope 
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

    -- Vezi acțiunile de cod disponibile (Code Actions / Quick Fix)
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)

    -- Vezi referințele (unde mai e folosită funcția)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

-- 5. Configurare Autocompletare (cmp)
local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(), -- Deschide meniul de autocompletare
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Enter pentru a accepta
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Tab pentru următorul element
    ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Shift+Tab pentru elementul anterior
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
