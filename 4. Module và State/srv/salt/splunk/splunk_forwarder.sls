{% if pillar['splunk_pkg_file'] is not none %}
load_pkg_forward:
  file.managed:
    - name: /tmp/{{ pillar['splunk_pkg_file'] }}
    - source: salt://splunk/pkg/{{ pillar['splunk_pkg_file'] }}
    - user: root
    - group: root
{%endif %}

{% if pillar['splunk_pkg_file'] is not none %}
run_pkg_forwad:
  cmd.run:
    - name: rpm -ivh /tmp/{{ pillar['splunk_pkg_file'] }}
    - require:
      - file: load_pkg_forward
{%endif %}

{% if pillar['splunk_path_cmd'] is not none %}
run_accept_license:
  cmd.run:
    - name: {{ pillar['splunk_path_cmd'] }}/splunk start --accept-license
    - require:
      - cmd: run_pkg_forwad
{%endif %}

{% if pillar['splunk_path_cmd'] is not none %}
run_deploy:
  cmd.run:
    - name: {{ pillar['splunk_path_cmd'] }}/splunk set deploy-poll {{ pillar['splunk_deploy_server'] }}:{{ pillar['splunk_deploy_port'] }} -auth {{ pillar['splunk_user'] }}:{{ pillar['splunk_passwd'] }}
    - require:
      - cmd: run_pkg_forwad
{%endif %}
