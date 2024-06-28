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
    module = { config = default; };
  };

  deno    = makeModule ./deno;
  go      = makeModule ./go;
  lua     = makeModule ./lua;
  python  = makeModule ./python;
  rust    = makeModule ./rust;
  ts      = makeModule ./ts;
}
