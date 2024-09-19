{ prev, mkPhp }:

let
  base = mkPhp {
    version = "5.4.45";
    hash = "sha256-Tg0osVVMlc+upvorZKrIVDPxWM5yu1cbzVV0+Y9MZYI=";
  };
in
base.withExtensions (
  { all, ... }:

  with all; (
    [
      bcmath
      calendar
      curl
      ctype
      dom
      exif
      fileinfo
      filter
      gd
      gettext
      gmp
      iconv
      intl
      json
      ldap
      mbstring
      opcache
      pcntl
      pgsql
      posix
      readline
      session
      simplexml
      sockets
      soap
      sysvsem
      sqlite3
      tokenizer
      xdebug
      xmlreader
      xmlwriter
      zip
      zlib
    ]
  )
)
