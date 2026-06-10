return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local clangd = opts.servers and opts.servers.clangd
      if not clangd then
        return
      end

      local cmd = vim.deepcopy(clangd.cmd or { "clangd" })

      local buildDir = os.getenv("BUILDDIR")
      local oeCore = os.getenv("OECORE_NATIVE_SYSROOT")
      local androidDir = os.getenv("ANDROID_CLANG_BIN")

      local queryDriver = nil
      if buildDir ~= nil then
        queryDriver = "--query-driver=" .. buildDir .. "/**/arm-rdk-linux-gnueabi-g++"
      end
      if oeCore ~= nil then
        queryDriver = "--query-driver=" .. oeCore .. "/usr/bin/arm-rdk-linux-gnueabi/arm-rdk-linux-gnueabi-g++"
      end
      if androidDir ~= nil then
        queryDriver = "--query-driver=" .. androidDir
      end

      if queryDriver ~= nil then
        table.insert(cmd, queryDriver)
      end

      clangd.cmd = cmd
    end,
  },
}
