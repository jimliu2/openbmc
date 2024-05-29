FILESEXTRAPATHS:prepend:evb-npcm845 := "${THISDIR}/${PN}:"

SRC_URI:append:evb-npcm845 = " file://80-evb-npcm845-sol.rules"


SRC_URI:append:evb-npcm845 = " \
  file://serial-to-bmc@.service \
  file://serial-to-host@.service.in \
  file://host-console-journal.service.in \
  file://host-console-filtered.sh \
  "

# Remove what installed by common recipe
#OBMC_CONSOLE_HOST_TTY = ""
SYSTEMD_SUBSTITUTIONS:remove:evb-npcm845 = "OBMC_CONSOLE_HOST_TTY:${OBMC_CONSOLE_HOST_TTY}:${PN}-ssh@.service"
SYSTEMD_SUBSTITUTIONS:remove:evb-npcm845 = "OBMC_CONSOLE_HOST_TTY:${OBMC_CONSOLE_HOST_TTY}:${PN}-ssh.socket"

SYSTEMD_SERVICE:${PN}:append:evb-npcm845 = " serial-to-bmc@.service"
SYSTEMD_SERVICE:${PN}:append:evb-npcm845= " serial-to-host@.service"

OBMC_CONSOLE_FRONT_TTY = "ttyS4"
OBMC_CONSOLE_HOST_TTY = "ttyS1"

RDEPENDS:${PN}:append:evb-npcm845 = " bash"

FILES:${PN}:append:evb-npcm845 = " ${systemd_system_unitdir}/host-console-journal.service"


# Declare port spcific conf and service files
HOST_CONSOLE_TTY = "ttyS1"
CONSOLE_CONF_FMT = "file://server.{0}.conf"
SRC_URI:append:evb-npcm845 = " ${@compose_list(d, 'CONSOLE_CONF_FMT', 'HOST_CONSOLE_TTY')}"
CONSOLE_SSH_SOCKET_FILE_FMT = "file://${PN}-{0}-ssh.socket"
CONSOLE_SSH_SERVICE_FILE_FMT = "file://${PN}-{0}-ssh@.service"
SRC_URI:append:evb-npcm845 = " ${@compose_list(d, 'CONSOLE_SSH_SOCKET_FILE_FMT', 'HOST_CONSOLE_TTY')}"
SRC_URI:append:evb-npcm845 = " ${@compose_list(d, 'CONSOLE_SSH_SERVICE_FILE_FMT', 'HOST_CONSOLE_TTY')}"

CONSOLE_SSH_SOCKET_FMT = "${PN}-{0}-ssh.socket"
CONSOLE_SSH_SERVICE_FMT = "${PN}-{0}-ssh@.service"

SYSTEMD_SERVICE:${PN}:evb-npcm845 = " \
    ${PN}@.service \
    ${@compose_list(d, 'CONSOLE_SSH_SOCKET_FMT', 'HOST_CONSOLE_TTY')} \
    ${@compose_list(d, 'CONSOLE_SSH_SERVICE_FMT', 'HOST_CONSOLE_TTY')} \
    "

do_install:append:evb-npcm845() {
    for i in ${HOST_CONSOLE_TTY}
    do
        install -m 0644 ${WORKDIR}/server.${i}.conf ${D}${sysconfdir}/${BPN}/server.${i}.conf
        install -m 0644 ${WORKDIR}/${BPN}-${i}-ssh.socket ${D}${systemd_unitdir}/system/${BPN}-${i}-ssh.socket
        install -m 0644 ${WORKDIR}/${BPN}-${i}-ssh@.service ${D}${systemd_unitdir}/system/${BPN}-${i}-ssh@.service
    done

    # Deal with files installed by the base package's .bb install function
    rm -f ${D}${sysconfdir}/${BPN}.conf
    rm -f ${D}${sysconfdir}/${BPN}/server..conf
    rm -rf ${D}${systemd_unitdir}/system/${BPN}-ssh@.service.d/
    rm -f ${D}${systemd_unitdir}/system/${BPN}-ssh@.service
    rm -f ${D}${systemd_unitdir}/system/${BPN}-ssh.socket
    # Overwrite base package's obmc-console@.service with our own
    #install -m 0644 ${WORKDIR}/${BPN}@.service ${D}${systemd_unitdir}/system/${BPN}@.service

    # handle Nuvoton rules
    rm -f ${D}/${nonarch_base_libdir}/udev/rules.d/80-obmc-console-uart.rules
    install -D -m 0644 ${WORKDIR}/80-evb-npcm845-sol.rules ${D}/${nonarch_base_libdir}/udev/rules.d

    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/serial-to-bmc@.service \
        ${D}${systemd_system_unitdir}

    sed "s,@HOST_TTY@,${OBMC_CONSOLE_HOST_TTY}," \
        ${WORKDIR}/serial-to-host@.service.in \
        >${D}${systemd_system_unitdir}/serial-to-host@.service

    sed 's,@HOST_TTY@,${OBMC_CONSOLE_HOST_TTY},' \
        ${WORKDIR}/host-console-journal.service.in \
        >${D}${systemd_system_unitdir}/host-console-journal.service

    install -d ${D}${bindir}
    install -m0755 ${WORKDIR}/host-console-filtered.sh ${D}${bindir}/

}

pkg_postinst:${PN}:append:evb-npcm845 () {
  if [ -n "${OBMC_CONSOLE_FRONT_TTY}" ]; then
    systemctl --root=$D enable serial-to-host@${OBMC_CONSOLE_FRONT_TTY}.service
  fi
}