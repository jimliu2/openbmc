FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON += "-Dhost-instances='${OBMC_HOST_INSTANCES}'"
EXTRA_OEMESON:append = " -Dsnoop=enabled"

SRC_URI:append:evb-npcm845 = " file://0001-display-postcode-on-7seg-led.patch"
