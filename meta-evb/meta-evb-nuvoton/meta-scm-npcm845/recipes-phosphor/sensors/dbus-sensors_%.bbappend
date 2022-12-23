FILESEXTRAPATHS:prepend:scm-npcm845 := "${THISDIR}/${PN}:"

SRC_URI:append:scm-npcm845 = " file://0001-add-TMP100-support.patch"
SRC_URI:append:scm-npcm845 = " file://0004-add-NIC-temp-sensor.patch"
SRC_URI:append:scm-npcm845 = " file://0005-increase-adc-max-reading.patch"
SRC_URI:append:scm-npcm845 = " file://0006-change-psu-sensor-name.patch"
SRC_URI:append:scm-npcm845 = " file://0008-add-dimm-sensor.patch"
SRC_URI:append:scm-npcm845 = " file://0009-add-psu-sesnor-p2011-and-mx16550.patch"
SRC_URI:append:scm-npcm845 = " file://xyz.openbmc_project.dimmsensor.service"
    
PACKAGECONFIG:scm-npcm845 = "\
    hwmontempsensor \
    fansensor \
    psusensor \
    adcsensor \
    intrusionsensor \
    nvmesensor \
    dimmsensor \
    mcutempsensor \
    "

PACKAGECONFIG[dimmsensor] = "-Ddimm=enabled, -Ddimm=disabled"
SYSTEMD_SERVICE:${PN}:append:scm-npcm845 = "${@bb.utils.contains('PACKAGECONFIG', 'dimmsensor', \
                                               ' xyz.openbmc_project.dimmsensor.service', \
                                               '', d)}"

do_install:append:scm-npcm845() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/xyz.openbmc_project.dimmsensor.service \
        ${D}${systemd_system_unitdir}
}
