return {
  -- Mason is a plugin that is helpful for installing LSP servers, such as
  -- tsserver (typescript-language-server), and avoid issues when you have
  -- different node versions in projects such as when using a version
  -- manager like asdf
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = function()
      require('mason').setup()
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local on_attach = function()
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
      end

      lspconfig.tsserver.setup{
        on_attach = on_attach
      }

      lspconfig.lua_ls.setup{
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      }
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        -- A list of parser names, or "all" (the five listed parsers should always be installed)
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        highlight = {
          enable = true,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,

          disable = function(lang, _)
            return lang == "json" and vim.fn.col("$") > 1000
          end
        }
      })
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-live-grep-args.nvim'},
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      telescope.load_extension('live_grep_args')
      telescope.setup({
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
            mappings = {
              n = {
                ["<C-s>"] = actions.select_horizontal
              },
              i = {
                ["<C-s>"] = actions.select_horizontal
              }
            }
          },
          buffers = {
            mappings = {
              n = {
                ["<C-s>"] = actions.select_horizontal
              },
              i = {
                ["<C-s>"] = actions.select_horizontal
              }
            }
          }
        },
        extensions = {
          live_grep_args = {
            mappings = {
              n = {
                ["<C-s>"] = actions.select_horizontal
              },
              i = {
                ["<C-s>"] = actions.select_horizontal
              }
            }
          }
        }
      })
    end
  },
  'sbdchd/neoformat',
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup({
        italic = {
          strings = false,
          comments = false,
          foldes = false
        }
      })
    end
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        disable_italics = true
      })
      vim.cmd('colorscheme rose-pine')
    end
  }
}

