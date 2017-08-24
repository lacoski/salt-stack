{% for user in pillar['admin_users'] %}
user_admin_{{ user }}:
 user.present:
 - name: {{ user }}
 - password: {{ pillar['admin_passwd'] }}
 #- password: $1$pvaECagD$N9W67.ihtTPsrazryFYMt.
{% endfor %}

{% for user in pillar['normal_users'] %}
user_normal_{{ user }}:
 user.present:
 - name: {{ user }}
 #- password: {{ pillar['normal_passwd'] }}
 - password: $1$pvaECagD$N9W67.ihtTPsrazryFYMt.
{% endfor %}
