# 
# ARM Computer Vision and Machine Learning library
# 

SUMMARY = "ARM ComputerLibrary"
DESCRIPTION = "The ARM Computer Vision and Machine Learning library is a set of functions optimised for both ARM CPUs and GPUs using SIMD technologies."
FILESEXTRAPATHS:append:npcm8xx := "${THISDIR}/${PN}:"

# Version to use
SRCREV = "d8bf9b53752a4f573120cf51b31055de8b3c7d29"

S = "${WORKDIR}/git"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=a436777748fb1193895c051cea504ab6"

# for nproc command
DEPENDS = "coreutils-native " 

SRC_URI = "\
    git://github.com/ARM-software/ComputeLibrary.git;protocol=https;branch=main \
    file://0001-Fix-compile-error.patch \
"

inherit scons
SCONS_MAXLINELENGTH = ""

EXTRA_OESCONS:npcm8xx += "\
	arch=arm64-v8a \
    extra_cxx_flags="-fPIC -fno-strict-overflow -Wno-use-after-free -Wno-array-bounds -Wno-unused-but-set-variable -Wno-ignored-qualifiers -Wno-noexcept ${TOOLCHAIN_OPTIONS}" \
    benchmark_tests=1 \
    validation_tests=1 \
    neon=1 \
    openmp=1 \
    opencl=1 \
    set_soname=1 \
    toolchain_prefix=' ' \
    install_dir=_install \
"

do_install:npcm8xx() {
    mkdir -p ${D}${bindir}
    mkdir -p ${D}${libdir}
    mkdir -p ${D}${includedir}

    rm -r ${S}/build/_install/include/CL

    cp -R ${S}/build/_install/bin/* ${D}${bindir}
    cp -R ${S}/build/*.so* ${D}${libdir}
    cp -R ${S}/build/_install/include/* ${D}${includedir}
}

INSANE_SKIP:${PN} = "ldflags rdepends "
