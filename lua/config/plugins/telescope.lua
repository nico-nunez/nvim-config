return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy"
          },
          live_grep = {
            theme = "ivy"
          }
        },
        extensions = { 
          fzf = {}
        }
      }
      
      vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
      vim.keymap.set("n", "<leader>fp", require("telescope.builtin").find_files) 
      vim.keymap.set("n", "<leader>fg", require("telescope.builtin").git_files) 
      vim.keymap.set("n", "<leader>lg", require("telescope.builtin").live_grep)
    end
  }
}
