export APP_HAVEN_RELAY_IP="10.21.22.84"
export APP_HAVEN_CONFIG_UI_IP="10.21.22.85"

relay_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-relay/hostname"
export APP_HAVEN_RELAY_HIDDEN_SERVICE="$(cat "${relay_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
