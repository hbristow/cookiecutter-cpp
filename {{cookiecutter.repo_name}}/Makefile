# Build all targets
all: configure
	@ make -C build

# Build the documentation (Doxygen)
doc: configure
	@ make doc -C build

# Build all targets and run the test suite
test: configure
	@ make {{ cookiecutter.project_name }}_test -C build
	@ make test -C build

# Build and install all targets
install: all
	@ make install -C build

# Configure the targets (CMake)
configure:
	@ cd build && cmake ..

# Clean the build directory
clean:
	@ rm -rf build && mkdir build

# Format all h,hpp,c,cpp,cxx files under version control inplace
format:
	@ { git diff --name-only --diff-filter=ACMRT; \
	    git diff --name-only --diff-filter=ACRMT --cached; } | \
	  grep -E "\.(c|h|cpp|hpp|cxx)$$" | \
	  xargs -n1 clang-format -i

# Check for formatting violations without fixing
check-format:
	@ ! { git diff --name-only --diff-filter=ACMRT; \
	      git diff --name-only --diff-filter=ACMRT --cached; } | \
	    grep -E "\.(c|h|cpp|hpp|cxx)$$" | \
	    xargs -n1 clang-format -output-replacements-xml | \
	    grep "<replacement " > /dev/null
