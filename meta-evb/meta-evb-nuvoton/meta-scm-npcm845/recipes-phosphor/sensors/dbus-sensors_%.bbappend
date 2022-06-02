FILESEXTRAPATHS:prepend:scm-npcm845 := "${THISDIR}/${PN}:"

SRC_URI:append:scm-npcm845 = " \
    file://0001-hwmon-temp-add-tmp100-support.patch \
    file://0002-Fansensor-get-pwm-from-other-hwmon-path.patch \
    "
