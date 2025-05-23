{
  stdenv,
  fetchFromGitHub,
  lib,
  zlib,
  pcre,
  gnutls,
}:

stdenv.mkDerivation rec {
  pname = "tintin";
  version = "2.02.42";

  src = fetchFromGitHub {
    owner = "scandum";
    repo = "tintin";
    rev = version;
    hash = "sha256-8+tYI9+yAIEqByr6kDEEs2hqtIVKwC9bgWssXq24dbg=";
  };

  buildInputs = [
    zlib
    pcre
    gnutls
  ];

  preConfigure = ''
    cd src
  '';

  meta = with lib; {
    description = "Free MUD client for macOS, Linux and Windows";
    homepage = "https://tintin.mudhalla.net/index.php";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ abathur ];
    mainProgram = "tt++";
    platforms = platforms.unix;
  };
}
