((From (Image_tag (ocaml/opam alpine-3.4_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout f21824e445c07a13ecbf1a22b8aa806bb702c7b7"))
 (Run
  (Shell
   "opam remote add extra1 https://github.com/mirage/mirage-dev.git#092f8251995b22408c1b8e98871553834e86cb99"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin tags/v2.6.1:cibranch"))
 (Run (Shell "git checkout 8f441498c61188720765a5bf5c7a7516c60a6b2a"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))