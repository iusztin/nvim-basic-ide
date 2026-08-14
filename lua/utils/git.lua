local M = {}

local function git(cwd, args)
  local command = { "git", "-C", cwd }
  vim.list_extend(command, args)

  local result = vim.system(command, { text = true }):wait()
  if result.code ~= 0 then
    return nil
  end

  return vim.trim(result.stdout)
end

function M.browse_upstream_default()
  local file = vim.api.nvim_buf_get_name(0)
  local cwd = vim.fs.root(file ~= "" and file or vim.fn.getcwd(), ".git") or vim.fn.getcwd()
  local remote = git(cwd, { "remote", "get-url", "upstream" })
  local branch = git(cwd, { "symbolic-ref", "--short", "refs/remotes/upstream/HEAD" })

  if not remote or not branch then
    Snacks.gitbrowse({ what = "file" })
    return
  end

  branch = branch:gsub("^upstream/", "")
  local relfile = file ~= "" and git(cwd, { "ls-files", "--full-name", file }) or nil
  relfile = relfile ~= "" and relfile or nil
  local line = vim.fn.line(".")

  local repo = Snacks.gitbrowse.get_repo(remote)
  local fields = { branch = branch, file = relfile, line_start = line, line_end = line }
  local url = Snacks.gitbrowse.get_url(repo, fields, { what = relfile and "file" or "branch" })
  vim.ui.open(url)
end

return M
