all: configure
	@ make -C build

doc: configure
	@ make doc -C build

test: configure
	@ make {{ cookiecutter.project_name }}_test -C build
	@ make test -C build

configure:
	@ cd build && cmake ..

clean:
	@ rm -rf build && mkdir build

format:
	@ { git diff --name-only --diff-filter=ACMRT; \
        git diff --name-only --diff-filter=ACRMT --cached; } | \
      grep -E "\.(c|h|cpp|hpp|cxx)$$" | \
      xargs -n1 clang-format -i

check-format:
	@ ! { git diff --name-only --diff-filter=ACMRT; \
	      git diff --name-only --diff-filter=ACMRT --cached; } | \
		grep -E "\.(c|h|cpp|hpp|cxx)$$" | \
        xargs -n1 clang-format -output-replacements-xml | \
        grep "<replacement " > /dev/null
