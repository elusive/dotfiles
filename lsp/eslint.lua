
return {
	cmd = {
		"vscode-eslint-language-server",
		"--stdio",
	},
	settings = {
		useESLintClass = true,
		codeActionOnSave = {
			mode = "problems",
		},
	},
 }
