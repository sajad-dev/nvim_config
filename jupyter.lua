vim.api.nvim_create_user_command("JupyterInstallTools", function()
  vim.fn.jobstart({"pip", "install", "jupynium", "jupytext", "notebook", "selenium"}, {
    stdout_buffered = true,
    on_stdout = function(_, data)
      if data then
        for _, line in ipairs(data) do
          print(line)
        end
      end
    end,
    on_stderr = function(_, data)
      if data then
        for _, line in ipairs(data) do
          vim.api.nvim_err_writeln(line)
        end
      end
    end,
  })
end, {})

vim.api.nvim_create_user_command("KillPort", function(opts)
  local port = opts.args
  if port == "" then
    print("❗ Please provide a port number.")
    return
  end

  -- For Unix-based systems (Linux/macOS)
  local cmd = string.format("lsof -ti :%s | xargs kill -9", port)
  os.execute(cmd)
  print("✅ Port " .. port .. " has been killed (if any process was using it).")
end, {
  nargs = 1,
  desc = "Kill the process using the specified port",
})

vim.api.nvim_create_user_command("JupyterNotebook", function()
  local handle = io.popen("lsof -ti:8888")
  local pid = handle:read("*a")
  handle:close()

  if pid ~= "" then
    os.execute("kill -9 " .. pid)
  end

  vim.defer_fn(function()
    local result = vim.fn.jobstart({"jupyter", "notebook"}, {
      detach = true,
    })


  end, 2000) 

end, {})

