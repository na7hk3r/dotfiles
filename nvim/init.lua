
-- Instalar lazy.nvim si no está instalado
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Verifica si se carga lazy.nvim
local ok, lazy = pcall(require, "lazy")
if not ok then
  return
end

-- Configurar plugins
lazy.setup({
  -- Colores

 {
  "xero/evangelion.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("evangelion")
  end,
 },


  -- Búsqueda
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",  -- Lazy load cuando se use el comando
    config = function()
      require('telescope').setup{}
    end,
  },

  -- Navegación de archivos con Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require('neo-tree').setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
      })
    end,
  },
})

-- Asignar teclas útiles
vim.g.mapleader = " "  -- Cambia Leader a la barra espaciadora
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
