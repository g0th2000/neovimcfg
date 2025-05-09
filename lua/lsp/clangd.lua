local buildDir = os.getenv("BUILDDIR")
local queryDriver = nil
if buildDir ~= nil then
    queryDriver = "--query-driver=" .. buildDir .. "/**/arm-rdk-linux-gnueabi-g++"
end

local androidDir = os.getenv("ANDROID_CLANG_BIN")
if androidDir ~= nil then
    queryDriver = "--query-driver=" .. androidDir
end

require("lspconfig").clangd.setup({
    cmd = { "clangd",
        queryDriver,
    },
})
