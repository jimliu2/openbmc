SRC_URI:remove:npcm8xx = "git://github.com/OP-TEE/optee_os.git;branch=master;protocol=https"

SRC_URI:remove:npcm8xx = "file://0003-core-link-add-no-warn-rwx-segments.patch"
SRC_URI:remove:npcm8xx = "file://0004-core-Define-section-attributes-for-clang.patch"
SRC_URI:remove:npcm8xx = "file://0005-core-arm-S-EL1-SPMC-boot-ABI-update.patch"
SRC_URI:remove:npcm8xx = "file://0006-core-ffa-add-TOS_FW_CONFIG-handling.patch"
SRC_URI:remove:npcm8xx = "file://0007-core-spmc-handle-non-secure-interrupts.patch"
SRC_URI:remove:npcm8xx = "file://0008-core-spmc-configure-SP-s-NS-interrupt-action-based-o.patch"

SRC_URI:append:npcm8xx = "git://github.com/Nuvoton-Israel/optee_os.git;branch=npcm_3_22;protocol=https"

SRCREV:npcm8xx = "97d41fbeccbd66e94c0bcf06781be86e1c8ffd96"

EXTRA_OEMAKE:append:npcm8xx = " \
    CFG_CORE_HEAP_SIZE=524288 \
    CFG_TEE_RAM_VA_SIZE=3145728 \
    CFG_TZDRAM_START=0x02100000 \
    CFG_TZDRAM_SIZE=0x03f00000 \
    CFG_SHMEM_START=0x06000000 \
    CFG_TEE_SDP_MEM_BASE=0x05F00000 \
    CFG_TEE_SDP_MEM_SIZE=0x00100000 \
    "

do_deploy:npcm8xx() {
    install -d ${DEPLOYDIR}/
    install -m 644 ${D}${nonarch_base_libdir}/firmware/* ${DEPLOYDIR}/
}
