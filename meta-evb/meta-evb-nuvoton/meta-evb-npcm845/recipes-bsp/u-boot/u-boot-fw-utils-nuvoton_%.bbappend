FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:${THISDIR}/u-boot-nuvoton:"

SRC_URI:append:evb-npcm845 = " file://fw_env.config"
SRC_URI:append:evb-npcm845 = " file://0001-Update-env-offset-for-layout-change.patch"
SRC_URI:append:evb-npcm845 = " file://0002-Enable-openbmc-copy-base-file-to-ram-feature.patch"

do_install:append:evb-npcm845 () {
	install -m 644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
}
