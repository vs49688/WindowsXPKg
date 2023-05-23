{
  description = "Windows XP CD Key Verification/Generator";

  outputs = { self, nixpkgs }: {
    packages = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (system: let
      pkgs = import nixpkgs { inherit system; };
    in {
      default = pkgs.callPackage ./default.nix {
        version = self.lastModifiedDate;
      };
    });
  };
}
