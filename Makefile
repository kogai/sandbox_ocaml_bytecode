SRC_FILES := $(shell find ./src -type f -name '*.ml')
SRC_DIRS := "src"

OCB_FLAGS := -use-ocamlfind -Is $(SRC_DIRS)
OCB := ocamlbuild $(OCB_FLAGS)
OPAM_VER := 4.03.0

sample.byte: $(SRC_FILES)
	$(OCB) sample.byte

.PHONY: clean
clean:
	$(OCB) -clean
