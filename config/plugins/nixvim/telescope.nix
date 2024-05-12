{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
        enable = true;
        settings = {
          caseMode = "smart_case";
          fuzzy = true;
          overrideFileSorter = true;
          overrideGenericSorter = true;
        };
      };
    };
  };
}
