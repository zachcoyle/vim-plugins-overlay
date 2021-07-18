{
  description = "curated evergreen vim-plugins overlay";

  inputs = {
    barbar-nvim = { url = github:romgrk/barbar.nvim; flake = false; };
    blamer-nvim = { url = github:APZelos/blamer.nvim; flake = false; };
    calvera-dark-nvim = { url = github:yashguptaz/calvera-dark.nvim; flake = false; };
    completion-nvim = { url = github:nvim-lua/completion-nvim; flake = false; };
    feline-nvim = { url = github:famiu/feline.nvim; flake = false; };
    focus-vim = { url = github:merlinrebrovic/focus.vim; flake = false; };
    formatter-nvim = { url = github:mhartington/formatter.nvim; flake = false; };
    fzf-lsp-nvim = { url = github:gfanto/fzf-lsp.nvim; flake = false; };
    galaxyline-nvim = { url = github:glepnir/galaxyline.nvim/main; flake = false; };
    gitsigns-nvim = { url = github:lewis6991/gitsigns.nvim; flake = false; };
    goyo-vim = { url = github:junegunn/goyo.vim; flake = false; };
    gruvbox = { url = github:gruvbox-community/gruvbox; flake = false; };
    indent-blankline-nvim = { url = github:lukas-reineke/indent-blankline.nvim; flake = false; };
    lsp_signature-nvim = { url = github:ray-x/lsp_signature.nvim; flake = false; };
    lspkind-nvim = { url = github:onsails/lspkind-nvim; flake = false; };
    LuaSnip = { url = github:L3MON4D3/LuaSnip; flake = false; };
    neogit = { url = github:TimUntersberger/neogit; flake = false; };
    neon = { url = github:rafamadriz/neon; flake = false; };
    neorg = { url = github:vhyrro/neorg; flake = false; };
    nvcode-color-schemes-vim = { url = github:ChristianChiarulli/nvcode-color-schemes.vim; flake = false; };
    nvim-blame-line = { url = github:tveskag/nvim-blame-line; flake = false; };
    nvim-bufferline-lua = { url = github:akinsho/nvim-bufferline.lua; flake = false; };
    nvim-colorizer-lua = { url = github:norcalli/nvim-colorizer.lua; flake = false; };
    nvim-compe = { url = github:hrsh7th/nvim-compe; flake = false; };
    nvim-dap = { url = github:mfussenegger/nvim-dap; flake = false; };
    nvim-dap-virtual-text = { url = github:theHamsta/nvim-dap-virtual-text; flake = false; };
    nvim-jdtls = { url = github:mfussenegger/nvim-jdtls; flake = false; };
    nvim-lspconfig = { url = github:neovim/nvim-lspconfig; flake = false; };
    nvim-scrollview = { url = github:dstein64/nvim-scrollview; flake = false; };
    nvim-tree-lua = { url = github:kyazdani42/nvim-tree.lua; flake = false; };
    nvim-treesitter = { url = github:nvim-treesitter/nvim-treesitter; flake = false; };
    nvim-ts-autotag = { url = github:windwp/nvim-ts-autotag; flake = false; };
    nvim-ts-context-commentstring = { url = github:JoosepAlviste/nvim-ts-context-commentstring; flake = false; };
    nvim-ts-rainbow = { url = github:p00f/nvim-ts-rainbow; flake = false; };
    nvim-web-devicons = { url = github:kyazdani42/nvim-web-devicons; flake = false; };
    octo-nvim = { url = github:pwntester/octo.nvim; flake = false; };
    onedark-nvim = { url = github:joshdick/onedark.vim; flake = false; };
    packer-nvim = { url = github:wbthomason/packer.nvim; flake = false; };
    plenary-nvim = { url = github:nvim-lua/plenary.nvim; flake = false; };
    popup-nvim = { url = github:nvim-lua/popup.nvim; flake = false; };
    presence-nvim = { url = github:andweeb/presence.nvim; flake = false; };
    scrollbar-nvim = { url = github:Xuyuanp/scrollbar.nvim; flake = false; };
    snippets-nvim = { url = github:norcalli/snippets.nvim; flake = false; };
    sql-nvim = { url = github:tami5/sql.nvim; flake = false; };
    telescope-bibtex-nvim = { url = github:nvim-telescope/telescope-bibtex.nvim; flake = false; };
    telescope-cheat-nvim = { url = github:nvim-telescope/telescope-cheat.nvim; flake = false; };
    telescope-dap-nvim = { url = github:nvim-telescope/telescope-dap.nvim; flake = false; };
    telescope-emoji-nvim = { url = github:xiyaowong/telescope-emoji.nvim; flake = false; };
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
    trouble-nvim = { url = github:folke/trouble.nvim; flake = false; };
    vim-closer = { url = github:9mm/vim-closer; flake = false; };
    vim-dadbod-ui = { url = github:kristijanhusak/vim-dadbod-ui; flake = false; };
    vim-devicons = { url = github:ryanoasis/vim-devicons; flake = false; };
    vim-import-cost = { url = github:yardnsm/vim-import-cost; flake = false; };
    vim-prisma = { url = github:pantharshit00/vim-prisma; flake = false; };
    vim-repl = { url = github:sillybun/vim-repl; flake = false; };
    vim-vsnip = { url = github:hrsh7th/vim-vsnip; flake = false; };
    vim-vsnip-integ = { url = github:hrsh7th/vim-vsnip-integ; flake = false; };
    vim-which-key = { url = github:liuchengxu/vim-which-key; flake = false; };
    which-key-nvim = { url = github:folke/which-key.nvim; flake = false; };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    overlay =
      final: prev:
      let
        inherit (prev.vimUtils) buildVimPluginFrom2Nix;

        buildVitalityPlugin = name: buildVimPluginFrom2Nix {
          pname = name;
          version = "master";
          src = builtins.getAttr name inputs;
        };

        plugins = builtins.filter (name: name != "self" && name != "nixpkgs") (builtins.attrNames inputs);

      in
      {
        vitalityVimPlugins = builtins.listToAttrs
          (map (name: { inherit name; value = buildVitalityPlugin name; }) plugins);
      };
  };
}
