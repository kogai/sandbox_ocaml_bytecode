FROM circleci/node
# FROM ocaml/opam
# FROM ocaml/opam:alpine-3.3_ocaml-4.03.0
# FROM ocaml/opam:ubuntu-17.04_ocaml-4.03.0

ADD . ~/app
WORKDIR ~/app

RUN ./sample.byte
