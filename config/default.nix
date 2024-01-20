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
        extraConfigLua = default.extraConfigLua;
        extraPackages = default.extraPackages;
        extraPlugins = default.extraPlugins;
        globals = default.globals;
        keymaps = default.keymaps;
        options = default.options;
        plugins = default.plugins // import ./default/lsp.nix;
      };
    };
  };

  rust = makeNixvimWithModule {
    inherit pkgs;
    module = import ./rust { inherit pkgs default; };
  };

  python = makeNixvimWithModule {
    inherit pkgs;
    module = import ./python { inherit pkgs default; };
  };

  ts = makeNixvimWithModule {
    inherit pkgs;
    module = import ./ts { inherit pkgs default; };
  };
}
