((From (Image_tag (ocaml/opam alpine-3.4_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 445f96e93315f5d9dae0e7472c9c7b9907c10b74"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/558/head:cibranch"))
 (Run (Shell "git checkout 9f190fe4dd30c9aa6a09eb60f1cb3ede752806fa"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))