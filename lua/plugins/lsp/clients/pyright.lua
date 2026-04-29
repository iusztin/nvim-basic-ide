local function get_python_path()
  local venv_python = vim.fn.getcwd() .. "/.venv/bin/python"
  if vim.fn.filereadable(venv_python) == 1 then
    return venv_python
  end

  if vim.fn.executable('poetry') == 1 then
    local python_home = vim.trim(vim.fn.system('poetry env info -p'))
    if vim.v.shell_error == 0 and string.find(python_home, "virtualenvs", 1, true) then
      return string.format("%s/bin/python", python_home)
    end
  end

  return vim.fn.exepath('python') ~= '' and vim.fn.exepath('python') or 'python'
end

vim.lsp.config("pyright", {
  before_init = function(_, config)
    config.settings.python.pythonPath = get_python_path()
  end
})
