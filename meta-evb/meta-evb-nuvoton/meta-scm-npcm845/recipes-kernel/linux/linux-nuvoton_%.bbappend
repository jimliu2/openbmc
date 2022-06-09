FILESEXTRAPATHS:prepend := "${THISDIR}/linux-nuvoton:"

SRC_URI:append:scm-npcm845 = " file://scm-npcm845.cfg"
SRC_URI:append:scm-npcm845 = " file://0001-dts-npcm8xx-add-psci-smp-method-tz.patch"
SRC_URI:append:scm-npcm845 = " file://0001-pinctrl-npcm8xx-correct-gpio190-setting.patch"
SRC_URI:append:scm-npcm845 = " file://0001-net-phy-realtek-add-soft_reset.patch"
SRC_URI:append:scm-npcm845 = " file://0002-kernel-scm-dts.patch"
