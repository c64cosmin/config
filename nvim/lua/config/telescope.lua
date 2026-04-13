local function cd_to_git_root()
  local handle = io.popen("git rev-parse --show-toplevel")
  if not handle then
    return
  end

  local result = handle:read("*a")
  handle:close()

  if result == "" then
    return
  end

  -- Trim trailing newline
  result = result:gsub("\n$", "")

  -- Change Neovim's working directory
  vim.cmd("cd " .. vim.fn.fnameescape(result))
end

local function telescope_in_git_root(picker)
  cd_to_git_root()
  require("telescope.builtin")[picker]()
end

-- Mappings
vim.keymap.set("n", "<leader>ff", function()
    telescope_in_git_root("find_files")
end, { desc = "Find files (git root)" })

vim.keymap.set("n", "<leader>fs", function()
    telescope_in_git_root("live_grep")
end, { desc = "Live grep (git root)" })

vim.keymap.set("n", "<leader>fb", function()
    require("telescope.builtin").buffers()
end, { desc = "Buffers" })

vim.keymap.set("n", "<leader>fg", function()
    require("telescope.builtin").git_files()
end, { desc = "Git files" })
