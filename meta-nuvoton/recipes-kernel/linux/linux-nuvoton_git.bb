
KBRANCH ?= "NPCM-5.10-OpenBMC"
LINUX_VERSION ?= "5.10.161"
SRCREV = "960d5acdd8f30ac004501e5d76a188c45cc2066e"

require linux-nuvoton.inc

SRC_URI:append:nuvoton = " file://0003-i2c-nuvoton-npcm750-runbmc-integrate-the-slave-mqueu.patch"
#SRC_URI:append:nuvoton = " file://0004-driver-ncsi-replace-del-timer-sync.patch"
#SRC_URI:append:nuvoton = " file://0015-driver-misc-nuvoton-vdm-support-openbmc-libmctp.patch"
SRC_URI:append:nuvoton = " file://0017-drivers-i2c-workaround-for-i2c-slave-behavior.patch"
