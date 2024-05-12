{ pkgs
, vimUtils
, ...
}:
vimUtils.buildVimPlugin {
  pname = "yazi.nvim";
  version = "2023-02-10";
  src = fetchFromGitHub {
    owner = "mikavilpas";
    repo = "yazi.nvim";
    rev = "2cf605783e66523d1ac83cc65b2196193d81adcd";
    hash = "sha256-3P+xyTmzoyVvzG8B2nOEiVuUbutRu9skCKROQN8e/0w=";
  }
 meta.homepage = "https://github.com/mikavilpas/yazi.nvim";
}
