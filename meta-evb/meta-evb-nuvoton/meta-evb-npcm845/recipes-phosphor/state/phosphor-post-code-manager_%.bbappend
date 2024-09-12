SYS_POSTCODE_DISPLAY_PATH="/var/log/postcode"

EXTRA_OEMESON:append = " \
    -Dpostcode-display-path=${SYS_POSTCODE_DISPLAY_PATH} \
"
