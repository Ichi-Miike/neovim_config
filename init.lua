--  Set 'spaces for tabs' and tab-width
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--  Set the 'leader' character
vim.g.mapleader = " "


--  Add Lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")

--  Configuration
--  Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

--  Treesitter
local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "c_sharp", "sql", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "typescript", "html", "css", "csv", "java", "json",
    "markdown", "markdown_inline", "python", "xml", "yaml"},
  highlight = { enable = true },
  indent = { enable = true },  
})

--  Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>d", mark.rm_file)
vim.keymap.set("n", "<leader>c", mark.clear_all)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)


--  Neotree
vim.keymap.set("n", "<leader>ex", ":Neotree filesystem reveal left toggle<CR>")
