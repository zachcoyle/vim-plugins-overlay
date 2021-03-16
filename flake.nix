{
  description = "curated evergreen vim-plugins overlay";

  inputs = {

    flake-utils.url = github:numtide/flake-utils;

    edge = { url = github:sainnhe/edge; flake = false; };
    formatter-nvim = { url = github:mhartington/formatter.nvim; flake = false; };
    fzf-lsp-nvim = { url = github:gfanto/fzf-lsp.nvim; flake = false; };
    galaxyline-nvim = { url = github:glepnir/galaxyline.nvim/main; flake = false; };
    goyo-vim = { url = github:junegunn/goyo.vim; flake = false; };
    gruvbox = { url = github:gruvbox-community/gruvbox; flake = false; };
    lspkind-nvim = { url = github:onsails/lspkind-nvim; flake = false; };
    nvim-compe = { url = github:hrsh7th/nvim-compe; flake = false; };
    nvim-lspconfig = { url = github:neovim/nvim-lspconfig; flake = false; };
    nvim-tree-lua = { url = github:kyazdani42/nvim-tree.lua; flake = false; };
    nvim-treesitter = { url = github:nvim-treesitter/nvim-treesitter; flake = false; };
    nvim-treesitter-textobjects = { url = github:nvim-treesitter/nvim-treesitter-textobjects; flake = false; };
    nvim-web-devicons = { url = github:kyazdani42/nvim-web-devicons; flake = false; };
    plenary-nvim = { url = github:nvim-lua/plenary.nvim; flake = false; };
    popup-nvim = { url = github:nvim-lua/popup.nvim; flake = false; };
    scrollbar-nvim = { url = github:Xuyuanp/scrollbar.nvim; flake = false; };
    snippets-nvim = { url = github:norcalli/snippets.nvim; flake = false; };
    telescope-bibtex-nvim = { url = github:nvim-telescope/telescope-bibtex.nvim; flake = false; };
    telescope-cheat-nvim = { url = github:nvim-telescope/telescope-cheat.nvim; flake = false; };
    telescope-dap-nvim = { url = github:nvim-telescope/telescope-dap.nvim; flake = false; };
    telescope-frecency-nvim = { url = github:nvim-telescope/telescope-frecency.nvim; flake = false; };
    telescope-fzf-writer-nvim = { url = github:nvim-telescope/telescope-fzf-writer.nvim; flake = false; };
    telescope-fzy-native-nvim = { url = github:nvim-telescope/telescope-fzy-native.nvim; flake = false; };
    telescope-ghq-nvim = { url = github:nvim-telescope/telescope-ghq.nvim; flake = false; };
    telescope-github-nvim = { url = github:nvim-telescope/telescope-github.nvim; flake = false; };
    telescope-media-files-nvim = { url = github:nvim-telescope/telescope-media-files.nvim; flake = false; };
    telescope-menu-nvim = { url = github:nvim-telescope/telescope-menu.nvim; flake = false; };
    telescope-node-modules-nvim = { url = github:nvim-telescope/telescope-node-modules.nvim; flake = false; };
    telescope-nvim = { url = github:nvim-telescope/telescope.nvim; flake = false; };
    telescope-packer-nvim = { url = github:nvim-telescope/telescope-packer.nvim; flake = false; };
    telescope-project-nvim = { url = github:nvim-telescope/telescope-project.nvim; flake = false; };
    telescope-snippets-nvim = { url = github:nvim-telescope/telescope-snippets.nvim; flake = false; };
    telescope-symbols-nvim = { url = github:nvim-telescope/telescope-symbols.nvim; flake = false; };
    telescope-vimspector-nvim = { url = github:nvim-telescope/telescope-vimspector.nvim; flake = false; };
    telescope-z-nvim = { url = github:nvim-telescope/telescope-z.nvim; flake = false; };
    vim-dadbod-ui = { url = github:kristijanhusak/vim-dadbod-ui; flake = false; };
    vim-devicons = { url = github:ryanoasis/vim-devicons; flake = false; };
    vim-import-cost = { url = github:yardnsm/vim-import-cost; flake = false; };
    vim-prisma = { url = github:pantharshit00/vim-prisma; flake = false; };
    vim-repl = { url = github:sillybun/vim-repl; flake = false; };
    vim-vsnip = { url = github:hrsh7th/vim-vsnip; flake = false; };
    vim-vsnip-integ = { url = github:hrsh7th/vim-vsnip-integ; flake = false; };
    vim-which-key = { url = github:liuchengxu/vim-which-key; flake = false; };
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
      composeOverlays = pkgs.lib.foldl' pkgs.lib.composeExtensions (_: _: { });
      vim-plugins-overlay = import ./vim-plugins-overlay.nix inputs;
      overrides-overlay = import ./overrides.nix {
        lib = pkgs.lib;
        stdenv = pkgs.stdenv;
        tree-sitter = pkgs.tree-sitter;
      };
    in
    {
      overlay = composeOverlays [
        vim-plugins-overlay
        overrides-overlay
      ];
    });
}
