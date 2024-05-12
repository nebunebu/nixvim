{ pkgs
, vimUtils
, ...
}:

# NOTE: requires "kylechui/nvim-surround"
# NOTE: requires "foke/which-key.nvim"

vimUtils.buildVimPlugin {
  pname = "surround-ui.nvim";
  version = "2023-02-10";
  src = pkgs.fetchFromGitHub {
    owner = "roobert";
    repo = "surround-ui.nvim";
    rev = "65c25088e8dbd1e098245de007498b93c694afb0";
    hash = "sha256-7RrfLC1pEXstizHb1e0xy9WZS+YkcGnnEIQmh2TFZgk=";
  };
  meta.homepage = "https://github.com/roobert/surround-ui.nvim";
}
