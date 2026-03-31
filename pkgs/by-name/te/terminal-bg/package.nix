{
  python3,
  fetchFromGitHub,
  gobject-introspection,
  gtk3,
  gtk-layer-shell,
  vte,
  wrapGAppsHook3,
  lib,
}:

python3.pkgs.buildPythonPackage (finalAttrs: {
  pname = "terminal-bg";
  version = "0.1-unstable-2025-6-8";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "DaarcyDev";
    repo = "terminal-bg";
    rev = "6a1c2d771e02fabf263a51dda1f3bddb97d1b80f";
    hash = "sha256-Jr8NFeCdEQQJlz4xpM6xSE21V0+Kc5lhWCbq7G+RkTs=";
  };

  nativeBuildInputs = [
    gobject-introspection
    wrapGAppsHook3
  ];

  buildInputs = [
    gtk3
    gtk-layer-shell
    vte
  ];

  dependencies = with python3.pkgs; [
    pygobject3
  ];
})
