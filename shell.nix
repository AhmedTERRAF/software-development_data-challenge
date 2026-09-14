# Instructor-only dev shell for rehearsing/testing this repo locally.
# Not part of the student-facing course content: the data-challenge repo
# deliberately ships with no environment spec yet (see README "Status" -
# writing one is a Session 5 backlog task, using Miniforge/pixi, not Nix).
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.python3.withPackages (ps: [
      ps.numpy
      ps.matplotlib
      ps.jupyter
      ps.nbconvert
      ps.pytest
      ps.pdoc
    ]))
  ];
}
