_G.open_clipboard_path = function()
  local clipboard_path = vim.fn.getreg('+')
  clipboard_path = clipboard_path:gsub('\n', ''):gsub('\r', '')
  if clipboard_path == '' then
      print("剪切板中没有路径")
      return
  end
  local ok, err = pcall(vim.cmd, 'edit ' .. clipboard_path)
  if not ok then
      print("无法打开剪切板中的路径: " .. clipboard_path)
  end
end