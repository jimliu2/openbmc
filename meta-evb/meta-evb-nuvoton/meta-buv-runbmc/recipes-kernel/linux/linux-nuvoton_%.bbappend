FILESEXTRAPATHS:prepend:buv-runbmc := "${THISDIR}/linux-nuvoton:"

SRC_URI:append:buv-runbmc = " \
  file://buv-runbmc.cfg \
  file://0006-driver-SPI-add-w25q01jv-support.patch \
  file://0007-Ampere-Altra-MAX-SSIF-IPMI-driver.patch \
  file://0008-driver-misc-seven-segment-display-gpio-driver.patch \
  "
SRC_URI:append:buv-runbmc = " file://enable-v4l2.cfg" 
