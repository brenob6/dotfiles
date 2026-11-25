return {
  {
    -- Branch main: setup() só aceita install_dir; parsers e realce são configurados aqui
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "c",
        "cpp",
        "lua",
        "typescript",
        "tsx",
        "dockerfile",
        "yaml",
      })

      -- Ativa o realce em qualquer filetype com parser instalado
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function(_, opts)
      require("nvim-ts-autotag").setup(opts)
    end,
  },
}
