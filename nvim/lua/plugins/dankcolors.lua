return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#121413',
				base01 = '#121413',
				base02 = '#7a8481',
				base03 = '#7a8481',
				base04 = '#c9d6d2',
				base05 = '#f8fffc',
				base06 = '#f8fffc',
				base07 = '#f8fffc',
				base08 = '#ffbe9f',
				base09 = '#ffbe9f',
				base0A = '#c8e0d8',
				base0B = '#9ff4a3',
				base0C = '#f0fffa',
				base0D = '#c8e0d8',
				base0E = '#e8fff8',
				base0F = '#e8fff8',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#7a8481',
				fg = '#f8fffc',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#c8e0d8',
				fg = '#121413',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#7a8481' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#f0fffa', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#e8fff8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#c8e0d8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#c8e0d8',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#f0fffa',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#9ff4a3',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#c9d6d2' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#c9d6d2' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#7a8481',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
