{ sources ? import ./sources.nix }:

let
  pkgs =
    import sources.nixpkgs { overlays = [ (import sources.nixpkgs-mozilla) ]; };
  rust = pkgs.latest.rustChannels.nightly.rust.override {
   extensions = [ "rust-src" ];
  };
in rust
