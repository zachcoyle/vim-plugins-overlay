{
  description = "curated evergreen vim-plugins overlay";

  inputs = {

    flake-utils.url = github:numtide/flake-utils;

    formatter-nvim = { url = github:mhartington/formatter.nvim; flake = false; };
    fzf-lsp-nvim = { url = github:gfanto/fzf-lsp.nvim; flake = false; };
    galaxyline-nvim = { url = github:glepnir/galaxyline.nvim/main; flake = false; };
    goyo-vim = { url = github:junegunn/goyo.vim; flake = false; };
    gruvbox = { url = github:gruvbox-community/gruvbox; flake = false; };
    lspkind-nvim = { url = github:onsails/lspkind-nvim; flake = false; };
    nvim-compe = { url = github:hrsh7th/nvim-compe; flake = false; };
    nvim-lspconfig = { url = github:neovim/nvim-lspconfig; flake = false; };
    nvim-tree-lua = { url = github:kyazdani42/nvim-tree.lua; flake = false; };
    nvim-web-devicons = { url = github:kyazdani42/nvim-web-devicons; flake = false; };
    scrollbar-nvim = { url = github:Xuyuanp/scrollbar.nvim; flake = false; };
    snippets-nvim = { url = github:norcalli/snippets.nvim; flake = false; };
    telescope-nvim = { url = github:nvim-telescope/telescope.nvim; flake = false; };
    vim-dadbod-ui = { url = github:kristijanhusak/vim-dadbod-ui; flake = false; };
    vim-devicons = { url = github:ryanoasis/vim-devicons; flake = false; };
    vim-prisma = { url = github:pantharshit00/vim-prisma; flake = false; };
    vim-repl = { url = github:sillybun/vim-repl; flake = false; };
    vim-vsnip = { url = github:hrsh7th/vim-vsnip; flake = false; };
    vim-vsnip-integ = { url = github:hrsh7th/vim-vsnip-integ; flake = false; };
    vim-which-key = { url = github:liuchengxu/vim-which-key; flake = false; };
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs: {
    overlay =
      final: prev:
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
          "nvim-web-devicons"
          "scrollbar-nvim"
          "snippets-nvim"
          "vim-dadbod-ui"
          "vim-devicons"
          "vim-prisma"
          "vim-repl"
          "vim-vsnip"
          "vim-which-key"
        ];
      in
      {
        vitalityVimPlugins = builtins.listToAttrs
          (map (name: { inherit name; value = buildVitalityPlugin name; }) plugins);
      };
  };
}
