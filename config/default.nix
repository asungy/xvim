{ pkgs, makeNixvimWithModule, }:
let
  default = import ./default { inherit pkgs; };
  makeModule = path: makeNixvimWithModule {
    inherit pkgs;
    module = import path { inherit pkgs default; };
  };
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

  deno = makeModule ./deno;
  go = makeModule ./go;
  python = makeModule ./python;
  rust = makeModule ./rust;
  ts = makeModule ./ts;
}
