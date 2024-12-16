{
  description = "My wallpapers for my nix-config";

  outputs = _: rec {
    wallpapers = import ./default.nix;
    markdown-preview = import ./markdown-preview.nix {inherit wallpapers;};
  };
}
