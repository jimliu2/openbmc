
KBRANCH ?= "NPCM-5.10-OpenBMC"
LINUX_VERSION ?= "5.10.161"
SRCREV = "de9c7ec1304222cfc89afad55528c707b3187cf3"

require linux-nuvoton.inc

SRC_URI:append:nuvoton = " file://0003-i2c-nuvoton-npcm750-runbmc-integrate-the-slave-mqueu.patch"
#SRC_URI:append:nuvoton = " file://0004-driver-ncsi-replace-del-timer-sync.patch"
#SRC_URI:append:nuvoton = " file://0015-driver-misc-nuvoton-vdm-support-openbmc-libmctp.patch"
SRC_URI:append:nuvoton = " file://0017-drivers-i2c-workaround-for-i2c-slave-behavior.patch"
