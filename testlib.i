
%module testlib
%{
#define SWIG_FILE_WITH_INIT
#include "testlib.h"
%}

%include "numpy.i"

%init %{
import_array();
%}
%apply (double* IN_ARRAY1, int DIM1) {(double* seq, int n)};
%include "testlib.h"