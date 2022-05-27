FILESEXTRAPATHS:prepend:scm-npcm845 := "${THISDIR}/${PN}:"

PACKAGECONFIG:append:scm-npcm845 = " verify_signature"
