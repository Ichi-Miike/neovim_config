return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", ":Git status<CR>", {})
    vim.keymap.set("n", "<leader>gpush", ":Git push<CR>", {})
    vim.keymap.set("n", "<leader>gpull", ":Git pull<CR>", {})
  end
}
