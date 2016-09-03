((From (Image_tag (ocaml/opam fedora-24_ocaml-4.03.0)))
 (Run (Shell "git -C /home/opam/opam-repository pull origin master"))
 (Run
  (Shell
   "git -C /home/opam/opam-repository checkout ee8cc617a7b766014d45d04371b7324fa41912f9"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/383/head:cibranch"))
 (Run (Shell "git checkout 9f4e6f1c5937bdbdfbf1e4bab029c5ab09c8e6d1"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))