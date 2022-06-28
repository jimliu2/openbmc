KBRANCH ?= "NPCM-5.10-OpenBMC"
LINUX_VERSION ?= "5.10.67"

SRCREV = "1135f7bed5e3c4f7cc13b4ea00c4fa447e9ecb9c"

require linux-nuvoton.inc

SRC_URI:append:nuvoton = " file://0001-driver-remoteproc-Arbel-remoteproc-driver-support.patch"
SRC_URI:append:nuvoton = " file://0003-i2c-nuvoton-npcm750-runbmc-integrate-the-slave-mqueu.patch"
SRC_URI:append:nuvoton = " file://0004-driver-ncsi-replace-del-timer-sync.patch"
SRC_URI:append:nuvoton = " file://0015-driver-misc-nuvoton-vdm-support-openbmc-libmctp.patch"
SRC_URI:append:nuvoton = " file://0017-drivers-i2c-workaround-for-i2c-slave-behavior.patch"

# New Arch VDMX/VDMA driver
#SRC_URI:append:nuvoton = " file://2222-driver-misc-add-nuvoton-vdmx-vdma-driver.patch"
