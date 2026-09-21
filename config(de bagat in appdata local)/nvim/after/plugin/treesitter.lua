  -- Setare specială doar pentru Lua (să nu mai dea warning pe variabila "vim")
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  prefer_git = true;
  -- Limbi instalate automat
  ensure_installed = { 
    "c", 
    "lua", 
    "cpp",
    "vim", 
    "vimdoc", 
    "query", 
    "javascript", 
    "typescript", 
    "html", 
    "css", 
    "python",
    "bash",
    "json",
    "markdown",
    "markdown_inline"
  },

  -- Instalează sincron parserele doar dacă e specificat
  sync_install = false,

  -- Autoinstalează limbajele lipse la deschiderea unui fișier nou
  auto_install = true,

  -- Activează colorarea sintaxei (Syntax Highlighting) bazată pe Treesitter
  highlight = {
    enable = true,
    -- Dezactivează vim regex highlighting clasic pentru performanță
    additional_vim_regex_highlighting = false,
  },

  -- Indentare automată inteligentă bazată pe arborele sintactic
  indent = { 
    enable = true 
  },
})
