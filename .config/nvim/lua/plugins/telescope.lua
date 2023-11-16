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
    end
  }
}
