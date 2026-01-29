What is lapackf.inc:
lapackf.inc is a subset extracted from the Netlib versions of LAPACK and BLAS,
containing only the functionality required by DuCOM-COM3.

(note)
If the linked BLAS does not support being called from an OpenMP parallel region,
you can avoid the issue by building DuCOM-COM3 with -Duse_lapackf. In this case,
lapackf.inc is required. Please copy it into the src directory and use it there. 
If you prefer a simpler workaround, you may instead use -Dno_blas_with_openmp,
in which case lapackf.inc is not needed.

These switches provide a safe LAPACK/BLAS implementation for use inside the
element loops of DuCOM-COM3, which run within an OpenMP parallel region. Since
solvers such as MUMPS call LAPACK and BLAS outside the parallel region, please
continue to link a high-performance library for those parts.

You can also avoid the issue without rebuilding by setting the environment
variable SEQ_ELEM_ACCESS=T. However, note that in this mode the element-wise
loops are not parallelized, which may cause a slight reduction in performance.

Since MKL and OpenBLAS support calls from OpenMP parallel regions, this setting
is unnecessary when using them.
