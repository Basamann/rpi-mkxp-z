DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

MKXPZ_PREFIX=""
export LDFLAGS="-L$DIR/build/lib"
export CFLAGS="-I$DIR/build/include"
MKXPZ_OLD_PC=$(pkg-config --variable pc_path pkg-config)

# Try to load the stuff we built first
export PKG_CONFIG_LIBDIR="$DIR/build/lib/pkgconfig:$DIR/build/lib64/pkgconfig:${MKXPZ_OLD_PC}"
export PATH="$DIR/build/bin:$PATH"
export LD_LIBRARY_PATH="$DIR/build/lib:${LD_LIBRARY_PATH}"
export MKXPZ_PREFIX="$DIR/build"