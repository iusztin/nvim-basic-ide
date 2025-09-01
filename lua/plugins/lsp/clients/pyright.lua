local function get_python_path()
  local python_home = vim.trim(vim.fn.system('poetry env info -p'))
  local python_path = 'python'
  if string.find(python_home, ".venv", 1, true) then
    python_path = string.format("%s/bin/python", python_home)
  end

  return python_path
end

vim.lsp.config("pyright", {
  before_init = function(_, config)
    config.settings.python.pythonPath = get_python_path()
  end
})
