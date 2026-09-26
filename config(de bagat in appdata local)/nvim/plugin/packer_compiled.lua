-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\Kanto\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\share\\lua\\5.1\\?.lua;C:\\Users\\Kanto\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\Kanto\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\Kanto\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\Kanto\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n‹\3\0\3\n\0\18\00026\3\0\0'\5\1\0B\3\2\0029\4\2\3\18\6\0\0\18\a\1\0\18\b\2\0B\4\4\0029\5\3\1\a\5\4\0X\5\14€9\5\5\0019\6\5\2\5\5\6\0X\5\n€'\5\a\0006\6\b\0009\6\t\0069\6\n\0069\b\5\1'\t\v\0B\6\3\2&\5\6\5=\5\6\4L\4\2\0009\5\f\2\15\0\5\0X\6\21€9\5\3\1\a\5\4\0X\5\18€9\5\5\0019\6\f\2\5\5\6\0X\5\3€'\5\14\0=\5\r\4X\5\v€6\5\b\0009\5\15\0059\a\f\0029\b\5\1'\t\16\0&\b\t\bB\5\3\2\15\0\5\0X\6\2€'\5\17\0=\5\r\4L\4\2\0\"NeotreeBreadcrumbIntermediate\6/\15startswith\28NeotreeBreadcrumbOrigin\14highlight\16origin_path\a:~\16fnamemodify\afn\bvim\b.. \ttext\tpath\14directory\ttype\tname'neo-tree.sources.common.components\frequire§\3\0\1\t\0\16\0<9\1\0\0\18\3\1\0009\1\1\1B\1\2\2\14\0\1\0X\2\1€K\0\1\0009\2\2\0019\3\2\0\5\2\3\0X\2\31€6\2\3\0009\2\4\0029\2\5\0029\4\2\0B\2\2\2\15\0\2\0X\3)€9\3\2\0\4\2\3\0X\3&€9\3\6\0\15\0\3\0X\4\a€6\4\3\0009\4\a\4\18\6\3\0009\a\2\0B\4\3\2\14\0\4\0X\4\1€9\3\2\0=\3\6\0006\4\b\0'\6\t\0B\4\2\0029\4\n\4\18\6\0\0\18\a\2\0\18\b\3\0B\4\4\1X\2\17€9\2\v\1\a\2\f\0X\2\b€6\2\b\0'\4\t\0B\2\2\0029\2\r\2\18\4\0\0\18\5\1\0B\2\3\1X\2\6€6\2\b\0'\4\14\0B\2\2\0029\2\15\2\18\4\0\0B\2\2\1K\0\1\0\topen)neo-tree.sources.filesystem.commands\21toggle_directory\14directory\ttype\rnavigate neo-tree.sources.filesystem\frequire\15startswith\16origin_path\fdirname\afs\bvim\tpath\rget_node\ttreeÉ\4\1\0\a\0\28\0'6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\19\0003\5\18\0=\5\20\4=\4\21\0035\4\25\0005\5\23\0003\6\22\0=\6\24\5=\5\26\4=\4\f\3=\3\27\2B\0\2\1K\0\1\0\15filesystem\rmappings\1\0\1\rmappings\0\t<CR>\1\0\1\t<CR>\0\0\15components\tname\1\0\1\tname\0\0\19filtered_items\1\0\3\18hide_dotfiles\1\20hide_gitignored\1\fvisible\2\24follow_current_file\1\0\1\fenabled\2\1\0\5\16bind_to_cwd\1\15components\0\19filtered_items\0\24follow_current_file\0\vwindow\0\vwindow\1\0\2\vwindow\0\15filesystem\0\1\0\1\rposition\tleft\nsetup\rneo-tree\frequire\1\0\2\afg\f#f6c177\tbold\2\"NeotreeBreadcrumbIntermediate\1\0\2\afg\f#eb6f92\tbold\2\28NeotreeBreadcrumbOrigin\16nvim_set_hl\bapi\bvim\0" },
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neovim = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Kanto\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n‹\3\0\3\n\0\18\00026\3\0\0'\5\1\0B\3\2\0029\4\2\3\18\6\0\0\18\a\1\0\18\b\2\0B\4\4\0029\5\3\1\a\5\4\0X\5\14€9\5\5\0019\6\5\2\5\5\6\0X\5\n€'\5\a\0006\6\b\0009\6\t\0069\6\n\0069\b\5\1'\t\v\0B\6\3\2&\5\6\5=\5\6\4L\4\2\0009\5\f\2\15\0\5\0X\6\21€9\5\3\1\a\5\4\0X\5\18€9\5\5\0019\6\f\2\5\5\6\0X\5\3€'\5\14\0=\5\r\4X\5\v€6\5\b\0009\5\15\0059\a\f\0029\b\5\1'\t\16\0&\b\t\bB\5\3\2\15\0\5\0X\6\2€'\5\17\0=\5\r\4L\4\2\0\"NeotreeBreadcrumbIntermediate\6/\15startswith\28NeotreeBreadcrumbOrigin\14highlight\16origin_path\a:~\16fnamemodify\afn\bvim\b.. \ttext\tpath\14directory\ttype\tname'neo-tree.sources.common.components\frequire§\3\0\1\t\0\16\0<9\1\0\0\18\3\1\0009\1\1\1B\1\2\2\14\0\1\0X\2\1€K\0\1\0009\2\2\0019\3\2\0\5\2\3\0X\2\31€6\2\3\0009\2\4\0029\2\5\0029\4\2\0B\2\2\2\15\0\2\0X\3)€9\3\2\0\4\2\3\0X\3&€9\3\6\0\15\0\3\0X\4\a€6\4\3\0009\4\a\4\18\6\3\0009\a\2\0B\4\3\2\14\0\4\0X\4\1€9\3\2\0=\3\6\0006\4\b\0'\6\t\0B\4\2\0029\4\n\4\18\6\0\0\18\a\2\0\18\b\3\0B\4\4\1X\2\17€9\2\v\1\a\2\f\0X\2\b€6\2\b\0'\4\t\0B\2\2\0029\2\r\2\18\4\0\0\18\5\1\0B\2\3\1X\2\6€6\2\b\0'\4\14\0B\2\2\0029\2\15\2\18\4\0\0B\2\2\1K\0\1\0\topen)neo-tree.sources.filesystem.commands\21toggle_directory\14directory\ttype\rnavigate neo-tree.sources.filesystem\frequire\15startswith\16origin_path\fdirname\afs\bvim\tpath\rget_node\ttreeÉ\4\1\0\a\0\28\0'6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\19\0003\5\18\0=\5\20\4=\4\21\0035\4\25\0005\5\23\0003\6\22\0=\6\24\5=\5\26\4=\4\f\3=\3\27\2B\0\2\1K\0\1\0\15filesystem\rmappings\1\0\1\rmappings\0\t<CR>\1\0\1\t<CR>\0\0\15components\tname\1\0\1\tname\0\0\19filtered_items\1\0\3\18hide_dotfiles\1\20hide_gitignored\1\fvisible\2\24follow_current_file\1\0\1\fenabled\2\1\0\5\16bind_to_cwd\1\15components\0\19filtered_items\0\24follow_current_file\0\vwindow\0\vwindow\1\0\2\vwindow\0\15filesystem\0\1\0\1\rposition\tleft\nsetup\rneo-tree\frequire\1\0\2\afg\f#f6c177\tbold\2\"NeotreeBreadcrumbIntermediate\1\0\2\afg\f#eb6f92\tbold\2\28NeotreeBreadcrumbOrigin\16nvim_set_hl\bapi\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: neovim
time([[Config for neovim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "neovim")
time([[Config for neovim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
