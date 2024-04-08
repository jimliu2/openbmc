KSRC = "git://github.com/Nuvoton-Israel/linux;protocol=https;branch=${KBRANCH}"
KBRANCH = "NPCM-6.1-OpenBMC"
LINUX_VERSION = "6.1.12"
SRCREV = "9e1f8ee58243e2024cec452fc2f2fd9e911ec0c3"

require linux-nuvoton.inc

SRC_URI:append:nuvoton = " file://0017-drivers-i2c-workaround-for-i2c-slave-behavior.patch"

# New Arch VDMX/VDMA driver
# SRC_URI:append:nuvoton = " file://2222-driver-misc-add-nuvoton-vdmx-vdma-driver.patch"

# SRC_URI:append:nuvoton = " file://0004-driver-ncsi-replace-del-timer-sync.patch"
# SRC_URI:append:nuvoton = " file://0015-driver-misc-nuvoton-vdm-support-openbmc-libmctp.patch"
