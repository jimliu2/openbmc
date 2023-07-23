#
# armnn
#
SUMMARY = "ARM NN"
DESCRIPTION = "Arm NN ML Software."
FILESEXTRAPATHS:append:npcm8xx := "${THISDIR}/${PN}:"

# Version to use
SRCREV = "e77802b961e9d5b29283b6b7676ac53aee3d5cf4"

S = "${WORKDIR}/git"

LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=3e14a924c16f7d828b8335a59da64074"

SRC_URI = " \
    git://github.com/ARM-software/armnn;protocol=https;branch=branches/armnn_23_02 \
    file://0001-cmakelist-flag.patch \
    "

DEPENDS += "boost arm-computelibrary"

inherit cmake 

EXTRA_OECMAKE = "\
    -DCMAKE_BUILD_TYPE=Release \
    -DARMCOMPUTENEON=ON \
    -DSHARED_BOOST=ON \
    -DBUILD_TESTS=ON \
    -DBUILD_UNIT_TESTS=ON \
    -DARMCOMPUTENEON=ON \
    -DARMNNREF=ON \
    -DCMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES=${STAGING_INCDIR} \
"

do_install:npcm8xx() {
    install -d ${D}/${bindir}
    install -d ${D}/${nonarch_base_libdir}
    install -m 0755 ${WORKDIR}/build/UnitTests ${D}/${bindir}/
    install -D -p -m 0644 ${WORKDIR}/build/lib*.so.* ${D}/${nonarch_base_libdir}/
}

