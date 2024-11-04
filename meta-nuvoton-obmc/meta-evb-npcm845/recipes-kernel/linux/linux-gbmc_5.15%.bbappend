FILESEXTRAPATHS:append := "${THISDIR}/linux-gbmc:${THISDIR}/linux-nuvoton:"

SRC_URI:append = " file://evb-npcm845.cfg"
SRC_URI:append = " file://0001-arm64-dts-add-nuvoton.patch"
SRC_URI:append = " file://0001-dt-binding-clk-npcm845-Add-binding-for-Nuvoton-NPCM8.patch"
SRC_URI:append = " file://0001-spi-npcm-fiu-Add-NPCM8XX-support.patch"
SRC_URI:append = " file://0001-clk-npcm8xx-add-clock-controller.patch"
SRC_URI:append = " file://0001-arm64-npcm-Add-support-for-Nuvoton-NPCM8XX-BMC-SoC.patch"

SRC_URI:append = " file://nuvoton-npcm845-evb.dts;subdir=git/arch/${ARCH}/boot/dts/nuvoton"
SRC_URI:append = " file://nuvoton-npcm845-pincfg-evb.dtsi;subdir=git/arch/${ARCH}/boot/dts/nuvoton"
SRC_URI:append = " file://nuvoton-common-npcm8xx.dtsi;subdir=git/arch/${ARCH}/boot/dts/nuvoton"
SRC_URI:append = " file://nuvoton-npcm845.dtsi;subdir=git/arch/${ARCH}/boot/dts/nuvoton"

# pinctrl patches from nuvoton 5.15
SRC_URI:append = " file://0009-pinctrl-nuvoton-add-NPCM8XX-pinctrl-and-GPIO-driver.patch"
SRC_URI:append = " file://0010-pinctrl-nuvoton-npcm8xx-correct-gpio190-setting.patch"
SRC_URI:append = " file://0011-driver-pinctrl-correct-bu5b-and-smb16b-configuration.patch"
SRC_URI:append = " file://0012-pinctrl-nuvoton-npcm8xx-correct-gpo187-smb14b-and-sp.patch"
SRC_URI:append = " file://0013-pinctrl-npcm8xx-add-GPO-187-sysfs-support.patch"
SRC_URI:append = " file://0014-pinctrl-npcm8xx-add-GPIO-183-to-GPIO189-sysfs-suppor.patch"
SRC_URI:append = " file://0015-pinctrl-npcm8xx-fix-smb23b-pin-number.patch"
SRC_URI:append = " file://0018-pinctrl-npcm8xx-prevent-glitch-when-setting-the-GPIO.patch"
SRC_URI:append = " file://0019-pinctrl-npcm8xx-clear-polarity-before-setting-interr.patch"
SRC_URI:append = " file://0020-pinctrl-npcm8xx-remove-unused-gpio-setting.patch"
SRC_URI:append = " file://0021-pinctrl-pinctrl-npcm8xx-add-GPI35-and-GPI36.patch"
SRC_URI:append = " file://0022-pinctrl-npcm8xx-correct-gpio162-and-gpio168-setting.patch"
SRC_URI:append = " file://0023-pinctrl-npcm8xx-Correct-sg1mdio-smi-and-remove-unuse.patch"

# i3c patches from nuvoton 5.15
SRC_URI:append = " file://0001-i3c-add-i3c-mctp-header-file.patch"
SRC_URI:append = " file://0001-i3c-master-svc-move-module-reset-behind-clk-enable.patch"
SRC_URI:append = " file://0001-i3c-master-svc-fix-atomic-issue.patch"
SRC_URI:append = " file://0002-i3c-master-svc-separate-err-fifo-and-disable-interru.patch"
SRC_URI:append = " file://0003-i3c-master-svc-add-support-for-slave-to-stop-returni.patch"
SRC_URI:append = " file://0004-i3c-master-svc-set-ODSTOP-to-let-I2C-device-see-the-.patch"
SRC_URI:append = " file://0005-i3c-master-svc-add-runtime-pm-support.patch"
SRC_URI:append = " file://0006-i3c-master-svc-add-the-missing-module-device-table.patch"
SRC_URI:append = " file://0007-i3c-master-svc-enable-the-interrupt-in-the-enable-ib.patch"
SRC_URI:append = " file://0008-i3c-master-svc-fix-returnvar.cocci-warning.patch"
SRC_URI:append = " file://0009-i3c-add-i3c-device-interface.patch"
SRC_URI:append = " file://0010-i3c-master-svc-fix-tx-issue.patch"
SRC_URI:append = " file://0011-i3c-master-svc-set-I3C-SCL-rate-according-to-dts-con.patch"
SRC_URI:append = " file://0012-i3c-master-svc-fix-IBI-issue.patch"
SRC_URI:append = " file://0013-i3c-master-support-jedec-SPD5.patch"
SRC_URI:append = " file://0014-i3c-master-svc-fix-invalid-IBI-issue.patch"
SRC_URI:append = " file://0015-i3c-master-svc-update-driver.patch"
SRC_URI:append = " file://0016-i3c-master-svc-abort-the-transfer-if-NACKed.patch"
SRC_URI:append = " file://0017-i3c-master-svc-update-driver.patch"
SRC_URI:append = " file://0018-i3c-master-svc-add-DMA-support.patch"
SRC_URI:append = " file://0019-npcm845-improve-i3c-performance.patch"
SRC_URI:append = " file://0020-i3c-master-svc-set-max-RDTERM.patch"
SRC_URI:append = " file://0021-i3c-i3cdev-update-the-transfer-len-for-read.patch"
SRC_URI:append = " file://0022-i3c-master-svc-update-driver.patch"
SRC_URI:append = " file://0023-i3c-master-svc-fix-non-dma-write-issue.patch"
SRC_URI:append = " file://0024-i3c-master-svc-disable-slavstart-interrupt-during-dm.patch"
SRC_URI:append = " file://0025-i3c-master-svc-use-normal-GDMA-mode-to-fix-ECC-issue.patch"
SRC_URI:append = " file://0026-i3c-svc-Revert-npcm845-improve-i3c-performance.patch"
SRC_URI:append = " file://0027-i3c-master-Implement-CCC-GETSTATUS-function.patch"
SRC_URI:append = " file://0028-i3c-Add-I3C-target-support.patch"
SRC_URI:append = " file://0029-i3c-device-Add-SETMWL-GETMWL-and-SETMRL-GETMRL-suppo.patch"
SRC_URI:append = " file://0030-i3c-mctp-add-MCTP-I3C-driver.patch"
SRC_URI:append = " file://0031-i3c-mctp-Add-I3C-Target-MCTP-driver.patch"
SRC_URI:append = " file://0032-i3c-mctp-return-0-for-read-operation-if-no-rx-packet.patch"
SRC_URI:append = " file://0033-i3c-master-svc-support-slave-mode.patch"
SRC_URI:append = " file://0034-i3c-master-svc-fix-no-initial-role-property-error.patch"
SRC_URI:append = " file://0035-i3c-fix-driver-remove-error.patch"
SRC_URI:append = " file://0036-i3c-master-svc-fix-hot-join-issue.patch"
SRC_URI:append = " file://0037-i3c-master-svc-fix-spurious-slave-event.patch"
SRC_URI:append = " file://0038-i3c-master-svc-support-hdr-ddr.patch"
SRC_URI:append = " file://0039-i3c-master-svc-fix-build-warning.patch"
SRC_URI:append = " file://0040-i3c-hub-core-I3C-HUB-driver-implementation.patch"
SRC_URI:append = " file://0041-i3c-master-svc-use-hdr-mode-only-when-transfer-size-.patch"
SRC_URI:append = " file://0042-i3c-export-send-CCC-command-API.patch"
SRC_URI:append = " file://0043-i3c-hub-send-SETHID-SETAASA-ccc.patch"
SRC_URI:append = " file://0044-i3c-hub-Configure-Open-Drain-Push-Pull-mode-for-slav.patch"
SRC_URI:append = " file://0045-i3c-master-svc-support-setting-scl-timing-according-.patch"
SRC_URI:append = " file://0046-i3c-npcm-bic-Add-NPCM-BIC-driver.patch"
SRC_URI:append = " file://0047-mctp-i3c-MCTP-I3C-driver.patch"
SRC_URI:append = " file://0048-i3c-master-svc-set-master-pid-info.patch"
SRC_URI:append = " file://0049-i3c-master-svc-fix-probe-failure-when-no-i3c-device-.patch"
SRC_URI:append = " file://0050-i3c-svc-Fix-wrong-bus-state-after-DAA-process.patch"
SRC_URI:append = " file://0051-i3c-svc-Flush-fifo-before-DAA-process.patch"
SRC_URI:append = " file://0052-i3c-svc-Fix-wrong-dynamic-address-assigned-during-DA.patch"
SRC_URI:append = " file://0053-i3c-master-svc-fix-race-condition-in-ibi-work-thread.patch"
SRC_URI:append = " file://0054-i3c-master-svc-fix-SDA-keep-low-when-polling-IBIWON-.patch"
SRC_URI:append = " file://0055-i3c-master-svc-fix-ibi-may-not-return-mandatory-data.patch"
SRC_URI:append = " file://0056-i3c-master-svc-add-check-ibi-request-capable-bit-whe.patch"
SRC_URI:append = " file://0057-i3c-master-svc-remove-wait-i3c-bus-idle-after-emit-s.patch"
SRC_URI:append = " file://0058-i3c-master-svc-change-workaround-from-emit_stop-to-i.patch"
SRC_URI:append = " file://0059-i3c-master-svc-synchronize-interrupt-status-between-.patch"
SRC_URI:append = " file://0060-i3c-master-svc-initial-fifo-buffer-and-errwarn-statu.patch"
SRC_URI:append = " file://0061-i3c-master-svc-handle-IBI-event-after-send-bus-reque.patch"
SRC_URI:append = " file://0062-i3c-master-svc-fix-kernel-panic-when-complete-timeou.patch"
SRC_URI:append = " file://0063-drivers-i3c-svc-add-return-value-after-handle-ibi-ev.patch"
SRC_URI:append = " file://0064-i3c-master-svc-fix-i3c-suspend-resume-issue.patch"
SRC_URI:append = " file://0065-i3c-master-svc-Do-not-check-for-0-return-after-calli.patch"
SRC_URI:append = " file://0066-i3c-master-svc-Describe-member-saved_regs.patch"
SRC_URI:append = " file://0067-i3c-master-svc-fix-random-hot-join-failure-since-tim.patch"
SRC_URI:append = " file://0068-i3c-expose-interface-for-doing-daa-request.patch"
SRC_URI:append = " file://0069-i3c-master-svc-Set-timeout-when-doing-daa-and-master.patch"
SRC_URI:append = " file://0070-i3c-master-Free-the-old_dyn_addr-when-reattach.patch"
SRC_URI:append = " file://0071-i3c-master-Remove-the-wrong-place-of-reattach.patch"

# reset driver patches from nuvoton 5.15
SRC_URI:append = " file://0001-reset-npcm-using-syscon-instead-of-device-data.patch"
SRC_URI:append = " file://0002-reset-npcm-Add-NPCM8XX-support.patch"
SRC_URI:append = " file://0003-reset-npcm-fix-NPCM8XX-USB-PHY-reset-sequance.patch"
SRC_URI:append = " file://0004-reset-npcm8xx-add-50-us-delay-for-usb-phy-clock-stab.patch"

# i2c driver patches from nuvoton 5.15
SRC_URI:append = " file://0001-i2c-npcm-Support-NPCM845.patch"
