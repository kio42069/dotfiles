return {
   {
      'stevearc/oil.nvim',
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         columns = {
            "icon",
            "permissions",
            "size",
            "mtime",
         },
         keymaps = {
            ["<C-v>"] = "actions.select_vsplit",
            ["<C-s>"] = "actions.select_split",
            ["<Esc>"] = "actions.close",
         },
         view_options = {
            show_hidden = true
         },
         float = {
            padding = 5,
         }
      },
      keys = {
         { "<Leader>o", ":lua require('oil').open_float()<CR>" }
      }
   },
   {
      "mhartington/formatter.nvim",
      config = function()
         require("formatter").setup({
            filetype = {
               lua = {
                  require("formatter.filetypes.lua").stylua,
               }
            }
         })
      end
   },
   {
      "numToStr/Comment.nvim",
      opts = {}
   },
   {
      "norcalli/nvim-colorizer.lua",
      config = function ()
         require 'colorizer'.setup()
      end
   },
   {
      "themaxmarchuk/tailwindcss-colors.nvim",
      config = function ()
         require("tailwindcss-colors").setup()
      end
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      opts = {}
   },
   {
      "wakatime/vim-wakatime"
   },
   {
      "m4xshen/hardtime.nvim",
      opts = {
         notification = false,
         disabled_keys = {
            ["<UP>"] = { "", "i" },
            ["<DOWN>"] = { "", "i" },
            ["<LEFT>"] = { "", "i" },
            ["<RIGHT>"] = { "", "i" },
            ["<Space>"] = { "n", "x" },
         },
      },
   },
   {
      "fedepujol/move.nvim",
      config = function()
         vim.keymap.set("v", "K", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
         vim.keymap.set("v", "J", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
      end
   },
   {
      "github/copilot.vim",
      config = function()
         vim.cmd('imap <silent><script><expr> <C-CR> copilot#Accept("\\<CR>")')
         vim.g.copilot_no_tab_map = true
         vim.g.copilot_enabled = false
      end
   },
}
