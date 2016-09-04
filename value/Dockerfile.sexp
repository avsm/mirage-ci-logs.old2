((From (Image_tag (ocaml/opam fedora-24_ocaml-4.03.0)))
 (Workdir /home/opam/opam-repository) (Run (Shell "git pull origin master"))
 (Run (Shell "git checkout 6cefd96367abc78d4ce13f081c8b7dd1552a76f6"))
 (Run (Shell "opam update"))
 (Run (Shell "git clone git://github.com/mirage/mirage /home/opam/src"))
 (Workdir /home/opam/src)
 (Run (Shell "git fetch origin pull/559/head:cibranch"))
 (Run (Shell "git checkout 0d510c6627835b3df792db7bc3fb2cba082de540"))
 (Run (Shell "opam pin add -n mirage /home/opam/src"))
 (Run (Shell "opam depext -uy mirage"))
 (Run (Shell "opam install -j 2 -vy mirage")))