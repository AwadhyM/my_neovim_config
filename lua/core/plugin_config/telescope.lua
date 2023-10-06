require('telescope').setup{
    defaults = {
	prompt_prefix = "$ "
	}
}

require('telescope').load_extension('fzf')

--telescope find_files cwd=<path>

require("telescope").load_extension "file_browser"
