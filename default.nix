{ mkDerivation, base, hpack, random-fu, stdenv, text }:
mkDerivation {
  pname = "useragents";
  version = "1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base random-fu text ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [ base random-fu text ];
  preConfigure = "hpack";
  homepage = "https://github.com/jappeace/useragents#readme";
  description = "A collection of user agents";
  license = stdenv.lib.licenses.mit;
}
