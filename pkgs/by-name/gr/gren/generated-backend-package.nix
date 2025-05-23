# This file has been autogenerated with cabal2nix.
# Update via ./update.sh
{
  mkDerivation,
  ansi-terminal,
  ansi-wl-pprint,
  base,
  base64-bytestring,
  binary,
  bytestring,
  containers,
  directory,
  edit-distance,
  fetchgit,
  filelock,
  filepath,
  ghc-prim,
  haskeline,
  hspec,
  hspec-discover,
  indexed-traversable,
  lib,
  mtl,
  process,
  raw-strings-qq,
  scientific,
  text,
  time,
  utf8-string,
  vector,
}:
mkDerivation {
  pname = "gren";
  version = "0.5.3";
  src = fetchgit {
    url = "https://github.com/gren-lang/compiler.git";
    sha256 = "1h5fkms6sa04ii5i6xz0501cqlqm3p9c3ci7cr4j5s4hsl72y7kj";
    rev = "f090f1eff9a12ae002cd2fb6704a0aff1250cdcc";
    fetchSubmodules = true;
  };
  isLibrary = false;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal
    ansi-wl-pprint
    base
    base64-bytestring
    binary
    bytestring
    containers
    directory
    edit-distance
    filelock
    filepath
    ghc-prim
    haskeline
    indexed-traversable
    mtl
    process
    raw-strings-qq
    scientific
    text
    time
    utf8-string
    vector
  ];
  executableHaskellDepends = [
    base
    bytestring
  ];
  testHaskellDepends = [
    base
    bytestring
    hspec
    text
    utf8-string
  ];
  testToolDepends = [ hspec-discover ];
  doHaddock = false;
  jailbreak = true;
  homepage = "https://gren-lang.org";
  description = "The `gren` command line interface";
  license = lib.licenses.bsd3;
  mainProgram = "gren";
}
