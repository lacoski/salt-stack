# Setup splunk user
splunk_user: admin
splunk_passwd: changeme
# Setup splunk deploy
splunk_deploy_server: 10.0.108.212
splunk_deploy_port: 8089
# Setup splunk forward
splunk_forward_server: 10.0.108.212
splunk_forward_port: 8089
# Setup pkg splunk
# pkg store in salt://splunk/pkg/
{% if grains['os_family'] == 'RedHat' %}
splunk_pkg_file: splunkforwarder-6.6.2-4b804538c686-linux-2.6-x86_64.rpm
splunk_path_cmd: /opt/splunkforwarder/bin
{% endif %}
