return {
	-- Harpoon plugin configuration
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		lazy = false,
		requires = { "nvim-lua/plenary.nvim" }, -- if harpoon requires this
		config = function()
			require("harpoon").setup({})

			local function toggle_telescope_with_harpoon(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers")
					.new({}, {
						prompt_title = "Harpoon",
						finder = require("telescope.finders").new_table({
							results = file_paths,
						}),
						previewer = require("telescope.config").values.file_previewer({}),
						sorter = require("telescope.config").values.generic_sorter({}),
					})
					:find()
			end
			vim.keymap.set("n", "<leader>ho", function()
				local harpoon = require("harpoon")
				toggle_telescope_with_harpoon(harpoon:list())
			end, { desc = "Open harpoon window" })
		end,
		keys = {
			{
				"<leader>ha",
				function()
					require("harpoon"):list():add()
				end,
				desc = "Harpoon Add file",
			},
			{
				"<leader>hmo",

				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Open Harpoon quick menu",
			},
			{
				"<leader>h1",
				function()
					require("harpoon"):list():select(1)
				end,
				desc = "Harpoon Go To #1 File",
			},
			{
				"<leader>h2",
				function()
					require("harpoon"):list():select(2)
				end,
				desc = "Harpoon go to #2 File",
			},
			{
				"<leader>h3",
				function()
					require("harpoon"):list():select(3)
				end,
				desc = "Harpoon go to #3 File",
			},
		},
	},
}
