local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use "nvim-lua/plenary.nvim"
	use 'nvim-tree/nvim-web-devicons' 
	use 'nvim-treesitter/nvim-treesitter'
	use 'navarasu/onedark.nvim'
	use 'lewis6991/gitsigns.nvim'
	use 'tpope/vim-fugitive'
	use 'Exafunction/codeium.vim'
	use 'javiorfo/nvim-soil'
	use 'javiorfo/nvim-nyctophilia'
	use {
		"nvim-lualine/lualine.nvim",
			requires = { "nvim-web-devicons", opt=true}
	}
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		requires = { 'nvim-lua/plenary.nvim' },
	}

  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
