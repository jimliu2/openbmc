
KBRANCH ?= "NPCM-5.10-OpenBMC"
LINUX_VERSION ?= "5.10.67"
SRCREV = "dc0d18f5c0a8b332026b14048a848976b03e88fc"

require linux-nuvoton.inc

SRC_URI:append:nuvoton = " file://0003-i2c-nuvoton-npcm750-runbmc-integrate-the-slave-mqueu.patch"
#SRC_URI:append:nuvoton = " file://0004-driver-ncsi-replace-del-timer-sync.patch"
#SRC_URI:append:nuvoton = " file://0015-driver-misc-nuvoton-vdm-support-openbmc-libmctp.patch"
SRC_URI:append:nuvoton = " file://0017-drivers-i2c-workaround-for-i2c-slave-behavior.patch"
SRC_URI:append:nuvoton = " file://0018-cerberus-mailbox-driver.patch"
