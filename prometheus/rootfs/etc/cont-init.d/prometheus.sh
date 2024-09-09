#!/command/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Prometheus
# Configures Prometheus
# ==============================================================================
echo "${SUPERVISOR_TOKEN}" > '/run/home-assistant.token'

mkdir -p /data/prometheus
chown -R prometheus:prometheus /data/prometheus
chmod 755 /data/prometheus
find /data/prometheus -type f -exec chmod 644 {} \;
find /data/prometheus -type d -exec chmod 755 {} \;