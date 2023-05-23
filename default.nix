{ stdenv, version, cmake, openssl_3 }:
stdenv.mkDerivation {
  inherit version;

  pname = "windowsxpkg";

  src = ./.;

  nativeBuildInputs = [
    cmake
  ];

  buildInputs = [
    openssl_3
  ];
}
