{ pkgs, ... }:

{
	config = {
		colorschemes.tokyonight.enable = true;

		options = {
			number = true;
			relativenumber = true;
			tabstop = 2;
			shiftwidth = 2;
		};

		plugins = {
			nvim-tree.enable = true;
		};

		keymaps = [
			{
				action = "<CMD>NvimTreeToggle<CR>";
				key = "<C-n>";
				options = {
					silent = true;
					noremap = true;
				};
			}
		];
	};
}
