{
  mkDerivation, lib,
  bison, extra-cmake-modules, flex,
  qtbase, qtdeclarative, qttools
}:

mkDerivation {
  name = "solid";
  meta = {
    maintainers = [ lib.maintainers.ttuegel ];
    broken = builtins.compareVersions qtbase.version "5.6.0" < 0;
  };
  nativeBuildInputs = [ bison extra-cmake-modules flex qttools ];
  propagatedBuildInputs = [ qtdeclarative ];
}
