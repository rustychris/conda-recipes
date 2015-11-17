# Automate rebuilding lots of things

package-mpfr:
	cd mpfr && conda-build .

package-cgal: 
	cd cgal && conda-build .


package-python-cgal-bindings: 
	cd python-cgal-bindings && conda-build .
