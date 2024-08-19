return {

  --  Telescope
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.5",
    dependencies = {"nvim-lua/plenary.nvim"}
  },

  --  Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  --  Harpoon
  { "primeagen/harpoon" },

  --  Neo-Tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
}

