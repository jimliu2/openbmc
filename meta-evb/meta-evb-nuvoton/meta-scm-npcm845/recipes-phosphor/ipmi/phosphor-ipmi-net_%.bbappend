FILESEXTRAPATHS:append:scm-npcm845 := "${THISDIR}/${PN}:"
SRC_URI:append:scm-npcm845 = " file://0001-Revert-Remove-HMAC-SHA1-from-Authentication-Integrit.patch"
SRC_URI:append:scm-npcm845 = " file://0001-Add-RemoteIPAddr-support.patch"
SRC_URI:append:scm-npcm845 = " file://0002-add-server-type-and-oem-id-to-meet-MS-spec.patch"

RMCPP_IFACE = "eth0"