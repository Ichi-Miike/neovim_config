return {
  "theprimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<leader>d", mark.rm_file)
    vim.keymap.set("n", "<leader>c", mark.clear_all)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
  end
}
