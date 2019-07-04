# CUDA Path
export PATH=/usr/local/cuda-10.1/bin:/usr/local/cuda-10.1/NsightCompute-2019.1${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# NVidia OptiX Path
export LD_LIBRARY_PATH=/home/ubuntu/OptiX/NVIDIA-OptiX-SDK-6.0.0-linux64/lib64:+:${LD_LIBRARY_PATH}

# Make opticks easier for interacting with
opticks-(){ . /home/ubuntu/opticks/opticks.bash && opticks-env $* ; }
opticks-

export LOCAL_BASE=/usr/local
export OPTICKS_HOME=/home/ubuntu/opticks

o(){ cd $(opticks-home) ; hg st ; }
op(){ op.sh $* ; }


export PYTHONPATH=/home/ubuntu
export PATH=$LOCAL_BASE/opticks/lib:$OPTICKS_HOME/bin:$OPTICKS_HOME/ana:$PATH

## For using opticks
opticks-cmake-generator(){ echo ${OPTICKS_CMAKE_GENERATOR:-Unix Makefiles} ; }

# For compiling Opticks
export OptiX_INSTALL_DIR=/home/ubuntu/OptiX/NVIDIA-OptiX-SDK-6.0.0-linux64
export CXXFLAGS="$CXXFLAGS -fPIC"
export CFLAGS="$CFLAGS -fPIC"
export OPTICKS_COMPUTE_CAPABILITY=60
export LD_LIBRARY_PATH=/usr/local/opticks/externals/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# geocache
export OPTICKS_KEY=OKX4Test.X4PhysicalVolume.lWorld0x4bc2710_PV.f6cc352e44243f8fa536ab483ad390ce
