((From (Image_tag (ocaml/opam debian-testing_ocaml-4.02.3)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout e548aee4bd73e5409d4fcd7dfc95fc5595f0fb66"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/559/head:cibranch"))
 (Run (Shell "git checkout 0d510c6627835b3df792db7bc3fb2cba082de540"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))