return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-live-grep-args.nvim'},
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      telescope.load_extension('live_grep_args')

      telescope.setup({
        defaults = {
          mappings = {
            n = {
              ["<C-s>"] = actions.select_horizontal
            },
            i = {
              ["<C-s>"] = actions.select_horizontal
            }
          }
        },
        pickers = {
          -- Configure find_files so that it can find hidden files but ignore the
          -- .git directory. Given that find_files respects .gitignore but .git is
          -- ignored by default by git and is usually not in .gitignore, we need
          -- to explicitly configure telescope to ignore the .git directory
          find_files = {
            hidden = true,
            file_ignore_patterns = {
              '.git/'
            },
          }
        }
      })

      -- Telescope mappings
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles'})

      -- live-grep-args allows you to pass args to ripgrep
      -- useful when you want to text search within a specific directory
      vim.keymap.set('n',
                '<leader>fg',
                ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
                { desc = '[F]ind by [G]rep' })

      vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind [W]ord under cursor' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
      vim.keymap.set('n', '<leader>fi', builtin.lsp_incoming_calls, {})
      vim.keymap.set('n', '<leader>fo', builtin.lsp_outgoing_calls, {})

      -- mapping to be able to find ignored files such as .env files
      vim.keymap.set('n', '<leader>fe', function()
        builtin.find_files({
          hidden = true,
          no_ignore = true,
          file_ignore_patterns = { 'node_modules/', '.git/' }
        })
      end, {})
    end
  }
}
