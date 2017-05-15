{
  mkDerivation, lib,
  extra-cmake-modules, qttools,
  avahi, qtbase
}:

mkDerivation {
  name = "kdnssd";
  meta = {
    maintainers = [ lib.maintainers.ttuegel ];
    broken = builtins.compareVersions qtbase.version "5.6.0" < 0;
  };
  nativeBuildInputs = [ extra-cmake-modules qttools ];
  propagatedBuildInputs = [ avahi qtbase ];
}
