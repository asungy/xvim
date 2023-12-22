{ pkgs, makeNixvimWithModule, }:
let
  default = import ./default { inherit pkgs; };
in
{
  default = makeNixvimWithModule {
    inherit pkgs;
    module = {
      config = {
        autoCmd = default.autoCmd;
        colorschemes = default.colorschemes;
        options = default.options;
        extraConfigLua = default.extraConfigLua;
        extraPackages = default.extraPackages;
        extraPlugins = default.extraPlugins;
        globals = default.globals;
        keymaps = default.keymaps;
        plugins = default.plugins;
      };
    };
  };

  rust = makeNixvimWithModule {
    inherit pkgs;
    module = {
      config = {
        autoCmd = default.autoCmd;
        colorschemes = default.colorschemes;
        options = default.options;
        extraConfigLua = default.extraConfigLua;
        extraPlugins = default.extraPlugins;
        globals = default.globals;
        keymaps = default.keymaps;
        plugins = default.plugins;

        extraPackages = default.extraPackages
          ++ [
            pkgs.rust-analyzer
            pkgs.rust-bin.nightly.latest.default
            pkgs.gdb
          ];
      };
    };
  };
}
