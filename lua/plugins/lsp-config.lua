return {
  {
    "Williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        PATH = "prepend",
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        "harper-ls", "omnisharp",
        "cssls", "html", "java_language_server", "tsserver",
        "jsonls", "spectral", "lua_ls", "markdown_oxide",
        "powershell_ex", "pyright", "sqlls", "lemminx"
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.omnisharp.setup {
        capabilities = capabilities,
                cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
                enable_import_completion = true,
                organize_imports_on_format = true,
                enable_roslyn_analyzers = true,
                root_dir = function ()
                    return vim.loop.cwd() -- current working directory
                end,
      }


      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
