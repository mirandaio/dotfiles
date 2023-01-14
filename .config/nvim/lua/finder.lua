require('telescope').setup{
  pickers = {
    -- Configure find_files so that it can find hidden files but ignore the
    -- .git directory. Given that find_files respects .gitignore but .git is
    -- ignored by default by git and is usually not in .gitignore, we need
    -- to explicitly configure telescope to ignore the .git directory
    find_files = {
      hidden = true,
      file_ignore_patterns = {
        '.git/'
      }
    }
  }
}
