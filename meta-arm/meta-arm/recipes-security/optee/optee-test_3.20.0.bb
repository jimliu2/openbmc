require optee-test.inc

SRC_URI:append = " \
    file://musl-workaround.patch \
   "
SRCREV = "8e74d47616a20eaa23ca692f4bbbf917a236ed94"

EXTRA_OEMAKE:append:libc-musl = " OPTEE_OPENSSL_EXPORT=${STAGING_INCDIR}"
DEPENDS:append:libc-musl = " openssl"
CFLAGS:append:libc-musl = " -Wno-error=deprecated-declarations"
