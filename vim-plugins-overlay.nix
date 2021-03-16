inputs: final: prev:
let
  inherit (prev.vimUtils) buildVimPluginFrom2Nix;

  buildVitalityPlugin = name: buildVimPluginFrom2Nix {
    pname = name;
    version = "master";
    src = builtins.getAttr name inputs;
  };

  plugins = [
    "formatter-nvim"
    "fzf-lsp-nvim"
    "galaxyline-nvim"
    "goyo-vim"
    "gruvbox"
    "lspkind-nvim"
    "nvim-compe"
    "nvim-lspconfig"
    "nvim-tree-lua"
    "nvim-treesitter"
    "nvim-treesitter-textobjects"
    "nvim-web-devicons"
    "plenary-nvim"
    "popup-nvim"
    "scrollbar-nvim"
    "snippets-nvim"
    "telescope-bibtex-nvim"
    "telescope-cheat-nvim"
    "telescope-dap-nvim"
    "telescope-frecency-nvim"
    "telescope-fzf-writer-nvim"
    "telescope-fzy-native-nvim"
    "telescope-ghq-nvim"
    "telescope-github-nvim"
    "telescope-media-files-nvim"
    "telescope-menu-nvim"
    "telescope-node-modules-nvim"
    "telescope-nvim"
    "telescope-packer-nvim"
    "telescope-project-nvim"
    "telescope-snippets-nvim"
    "telescope-symbols-nvim"
    "telescope-vimspector-nvim"
    "telescope-z-nvim"
    "vim-dadbod-ui"
    "vim-devicons"
    "vim-import-cost"
    "vim-prisma"
    "vim-repl"
    "vim-vsnip"
    "vim-which-key"
  ];
in
{
  vitalityVimPlugins = builtins.listToAttrs
    (map (name: { inherit name; value = buildVitalityPlugin name; }) plugins);
}
