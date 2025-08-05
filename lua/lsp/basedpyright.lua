require("lspconfig").basedpyright.setup({
	settings = {
		disableorganizeimports = true,
		basedpyright = {
			analysis = {
				-- ignore = { "*" }, --usually used to ignore specific files or folders, can be used for all
				typecheckingmode = "off", -- set this to "off" (or one of the other 4 levels of strictness) if you don't want it to type check, can also uncomment the above ignore = {"*"} line for only LSP feats
				diagnosticmode = "workspace",
				uselibrarycodefortypes = true,
				autoimportcompletions = true,
				autosearchpaths = true,
			},
		},
	},
})
