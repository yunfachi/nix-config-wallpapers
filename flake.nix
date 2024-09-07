{
  description = "My wallpapers for my nix-config";

  outputs = _: {
    wallpapers = import ./default.nix;
  };
}
