{ pkgs
, vimUtils
, ...
}:

vimUtils.buildVimPlugin {
  pname = "journal.nvim";
  version = "2023-02-10";
  src = pkgs.fetchFromGitHub {
    owner = "jakobkhansen";
    repo = "journal.nvim";
    rev = "2b99b64360ead85b9c46a068f797306971a6ac07";
    hash = "sha256-r5FhQZ3S91R7fj1kDLB6XF49ZbyAQE6z3eCPQRCTfRw=";
  };
  meta.homepage = "https://github.com/jakobhansen/journal.nvim";
}
