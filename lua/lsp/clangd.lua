local buildDir = os.getenv("BUILDDIR")
local oeCore = os.getenv("OECORE_NATIVE_SYSROOT")
local queryDriver = nil
if buildDir ~= nil then
	queryDriver = "--query-driver=" .. buildDir .. "/**/arm-rdk-linux-gnueabi-g++"
end

if oeCore ~= nil then
	-- queryDriver = "--query-driver=" .. oeCore .. "/usr/bin/aarch64-rdk-linux/aarch64-rdk-linux-g++"
	queryDriver = "--query-driver=" .. oeCore .. "/usr/bin/arm-rdk-linux-gnueabi/arm-rdk-linux-gnueabi-g++"
end

local androidDir = os.getenv("ANDROID_CLANG_BIN")
if androidDir ~= nil then
	queryDriver = "--query-driver=" .. androidDir
end

require("lspconfig").clangd.setup({
	cmd = { "clangd", queryDriver },
})
