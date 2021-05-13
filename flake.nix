{
  description = "curated evergreen vim-plugins overlay";

  inputs = {

    flake-utils.url = github:numtide/flake-utils;

    barbar-nvim = { url = github:romgrk/barbar.nvim; flake = false; };
    focus-vim = { url = github:merlinrebrovic/focus.vim; flake = false; };
    formatter-nvim = { url = github:mhartington/formatter.nvim; flake = false; };
    fzf-lsp-nvim = { url = github:gfanto/fzf-lsp.nvim; flake = false; };
    galaxyline-nvim = { url = github:glepnir/galaxyline.nvim/main; flake = false; };
    gitsigns-nvim = { url = github:lewis6991/gitsigns.nvim; flake = false; };
    goyo-vim = { url = github:junegunn/goyo.vim; flake = false; };
    gruvbox = { url = github:gruvbox-community/gruvbox; flake = false; };
    indent-blankline-nvim = { url = github:lukas-reineke/indent-blankline.nvim/lua; flake = false; };
    lsp_signature-nvim = { url = github:ray-x/lsp_signature.nvim; flake = false; };
    lspkind-nvim = { url = github:onsails/lspkind-nvim; flake = false; };
    LuaSnip = { url = github:L3MON4D3/LuaSnip; flake = false; };
    nvcode-color-schemes-vim = { url = github:ChristianChiarulli/nvcode-color-schemes.vim; flake = false; };
    nvim-blame-line = { url = github:tveskag/nvim-blame-line; flake = false; };
    nvim-bufferline-lua = { url = github:akinsho/nvim-bufferline.lua; flake = false; };
    nvim-colorizer-lua = { url = github:norcalli/nvim-colorizer.lua; flake = false; };
    nvim-compe = { url = github:hrsh7th/nvim-compe; flake = false; };
    nvim-dap = { url = github:mfussenegger/nvim-dap; flake = false; };
    nvim-dap-virtual-text = { url = github:theHamsta/nvim-dap-virtual-text; flake = false; };
    nvim-jdtls = { url = github:mfussenegger/nvim-jdtls; flake = false; };
    nvim-lspconfig = { url = github:neovim/nvim-lspconfig; flake = false; };
    nvim-tree-lua = { url = github:kyazdani42/nvim-tree.lua; flake = false; };
    nvim-treesitter = { url = github:nvim-treesitter/nvim-treesitter; flake = false; };
    nvim-ts-autotag = { url = github:windwp/nvim-ts-autotag; flake = false; };
    nvim-ts-context-commentstring = { url = github:JoosepAlviste/nvim-ts-context-commentstring; flake = false; };
    nvim-ts-rainbow = { url = github:p00f/nvim-ts-rainbow; flake = false; };
    nvim-web-devicons = { url = github:kyazdani42/nvim-web-devicons; flake = false; };
    packer-nvim = { url = github:wbthomason/packer.nvim; flake = false; };
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
    vim-closer = { url = github:9mm/vim-closer; flake = false; };
    vim-dadbod-ui = { url = github:kristijanhusak/vim-dadbod-ui; flake = false; };
    vim-devicons = { url = github:ryanoasis/vim-devicons; flake = false; };
    vim-import-cost = { url = github:yardnsm/vim-import-cost; flake = false; };
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
          "barbar-nvim"
          "focus-vim"
          "formatter-nvim"
          "fzf-lsp-nvim"
          "galaxyline-nvim"
          "goyo-vim"
          "gruvbox"
          "indent-blankline-nvim"
          "lsp_signature-nvim"
          "lspkind-nvim"
          "LuaSnip"
          "nvcode-color-schemes-vim"
          "nvim-blame-line"
          "nvim-bufferline-lua"
          "nvim-colorizer-lua"
          "nvim-compe"
          "nvim-dap"
          "nvim-dap-virtual-text"
          "nvim-jdtls"
          "nvim-lspconfig"
          "nvim-tree-lua"
          "nvim-treesitter"
          "nvim-ts-autotag"
          "nvim-ts-context-commentstring"
          "nvim-ts-rainbow"
          "nvim-web-devicons"
          "packer-nvim"
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
          "vim-closer"
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
      };
  };
}
