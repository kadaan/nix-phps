{
  buildPecl,
  lib,
  php,
  pcre,
  fetchgit,
}:

buildPecl {
  version = "4.3.0";
  pname = "redis";

  src = fetchgit {
    url = https://github.com/zendtech/ZendOptimizerPlus.git;
    rev = "20971cd33d723f2be1b9e2bd5bf0c5ad07c4af81";
    sha256 = "sha256-t1XGTilAbsUzSjIH06qBKfl0HHLr+UArYyrPo84+tVg=";
  };

  buildInputs = [ pcre ];
  
  meta = {
    description = "The Zend OPcache provides faster PHP execution through opcode caching and optimization.";
    license = lib.licenses.php301;
    homepage = "http://pecl.php.net/package/ZendOpcache";
  };
}
