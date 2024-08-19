return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      ensure_installed = {
        "c_sharp", "sql", "lua", "vim", "vimdoc", "query", "elixir", 
        "heex", "javascript", "typescript", "html", "css", "csv", "java",
        "json", "markdown", "markdown_inline", "python", "xml", "yaml"
      },
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
