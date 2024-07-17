export CDFROOT="/usr" 
export LD_LIBRARY_PATH="${CDFROOT}/lib:${LD_LIBRARY_PATH}" 
export LDFLAGS="-L${CDFROOT}/lib -I${CDFROOT}/include": 
export OPTIM="-O3 -mcmodel=large -fPIC ${LDFLAGS}" 
export CC=gcc 
export CXX=icpc 
export FC=gfortran-9 
export F77=gfortran-9
export F90=gfortran-9 
export CPP="gcc -E -mcmodel=large"
export CXXCPP="icpc -E -mcmodel=large"
export CPPFLAGS="-DNDEBUG -DpgiFortran ${LDFLAGS}"

export CFLAGS=" ${OPTIM}"
export CXXFLAGS=" ${OPTIM}"
export FCFLAGS=" ${OPTIM}"
export F77FLAGS=" ${OPTIM}"
export F90FLAGS=" ${OPTIM}" #
./configure --prefix=/usr/local/netcdf-ifort/4.5.3 --enable-large-file-tests --with-pic
