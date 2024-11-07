FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://0500-Support-get-static-eid-config-from-entity-manager.patch"
SRC_URI:append = " file://0501-Modified-the-type-of-NetworkId-to-uint32_t.patch"
SRC_URI:append = " file://0502-mctpd-Add-AssignEndpointStatic-dbus-interface.patch"
SRC_URI:append = " file://0503-Add-method-for-setting-up-MCTP-EID-by-config-path.patch"
SRC_URI:append = " file://0504-mctpd-fix-mctpd-crash-issue.patch"
SRC_URI:append = " file://0505-mctpd-supprot-usb-binding.patch"
SRC_URI:append = " file://0506-mctpd-discover-remote-eid.patch"
