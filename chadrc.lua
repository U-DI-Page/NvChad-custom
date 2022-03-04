local userPlugins = require("custom.plugins")
local M = {}

M.ui = {
  theme = "catppuccin",
}

M.plugins = {
  install = userPlugins,
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    }
  },

  default_plugin_config_replace = {
    nvim_tree = {
      auto_close = true,
      git = {
        enable = true,
      },
      view = {
        -- side = "right",
        width = 30,
      },
    },
  },
}

M.mappings = {
  misc = {
    save_file = "S", -- save file using :w
  }
}

M.mappings.plugins = {
   bufferline = {
      next_buffer = "<TAB>",
      prev_buffer = "<S-Tab>",
   },
   comment = {
      toggle = "<leader>/",
   },

   -- map to <ESC> with no lag
   better_escape = { -- <ESC> will still work
      esc_insertmode = { "jk" }, -- multiple mappings allowed
   },

   lspconfig = {
      declaration = "gD",
      definition = "gd",
      hover = "gl",
      implementation = "gi",
      signature_help = "gk",
      add_workspace_folder = "<leader>wa",
      remove_workspace_folder = "<leader>wr",
      list_workspace_folders = "<leader>wl",
      type_definition = "<leader>D",
      rename = "<leader>ra",
      references = "gr",
      float_diagnostics = "ge",
      goto_prev = "[d",
      goto_next = "]d",
      set_loclist = "<leader>q",
      formatting = "<leader>fm",
   },

   nvimtree = {
      toggle = "<C-b>",
      focus = "<leader>e",
   },

   telescope = {
      buffers = "<leader>fb",
      find_files = "<leader>ff",
      find_hiddenfiles = "<leader>fa",
      git_commits = "<leader>cm",
      git_status = "<leader>gt",
      help_tags = "<leader>fh",
      live_grep = "<leader>fw",
      oldfiles = "<leader>fo",
      themes = "<leader>th", -- NvChad theme picker
   },
}

return M
