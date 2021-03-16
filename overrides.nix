{ lib
, stdenv
  # nvim-treesitter
, tree-sitter
}:

self: super: {

  # Usage:
  # pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [ p.tree-sitter-c p.tree-sitter-java ... ])
  # or for all grammars:
  # pkgs.vimPlugins.nvim-treesitter.withPlugins (p: builtins.attrValues p)
  nvim-treesitter = super.nvim-treesitter.overrideAttrs (old: {
    passthru.withPlugins =
      grammarFn: self.nvim-treesitter.overrideAttrs (_: {
        postPatch =
          let
            grammars = grammarFn tree-sitter.builtGrammars;
            symLinks = map
              (drv:
                let
                  name = lib.strings.getName drv;
                  # The plugin expects the parsers to have a specific name, e.g.:
                  # https://github.com/nvim-treesitter/nvim-treesitter/blob/9d57216c0d94c9823c0d971caeaffb3b261e527e/lua/nvim-treesitter/parsers.lua#L37
                  linkName = (lib.strings.removePrefix "tree-sitter-" (lib.strings.removeSuffix "-grammar" name)) + stdenv.hostPlatform.extensions.sharedLibrary;
                in
                "ln -s ${drv}/parser parser/${linkName}")
              grammars;
          in
          ''
            ${lib.concatStringsSep "\n" symLinks}
          '';
      });
  });

}
