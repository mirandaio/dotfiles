local function enable_copilot()
  if vim.fn.executable("node") == 1 then
    return true
  else
    vim.notify("Node is not available, but required for Copilot.", vim.log.levels.WARN)
    return false
  end
end

return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    enabled = enable_copilot(),
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<C-l>'
        }
      }
    }
  }
}
