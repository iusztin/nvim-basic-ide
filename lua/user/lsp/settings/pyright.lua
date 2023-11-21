local python_home = vim.trim(vim.fn.system('poetry env info -p'))
local python_path = 'python'
if string.find(python_home, ".venv", 1, true) then
  python_path = string.format("%s/bin/python", python_home)
end

return {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
      pythonPath = python_path,
    },
  },
}
