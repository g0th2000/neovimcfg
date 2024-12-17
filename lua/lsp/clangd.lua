local buildDir = os.getenv("BUILDDIR")
local queryDriver = nil
if buildDir ~= nil then
    queryDriver = "--query-driver=" .. buildDir .. "/**/arm-rdk-linux-gnueabi-g++"
end

require("lspconfig").clangd.setup({
    cmd = { "clangd",
        queryDriver,
    },
})
