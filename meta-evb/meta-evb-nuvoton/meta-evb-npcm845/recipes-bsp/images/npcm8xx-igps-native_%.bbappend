FILESEXTRAPATHS:prepend :=  "${THISDIR}/file:"

SRC_URI:append = " file://BootBlockAndHeader_A1_EB.xml"

do_install:append() {
	install -d ${DEST}
	install -m 0644 ${WORKDIR}/BootBlockAndHeader_A1_EB.xml ${DEST}/BootBlockAndHeader_A1_EB.xml
}
