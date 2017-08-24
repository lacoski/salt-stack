base:
 '*':
   - core
   - user
   - package
   - splunk
 'osfinger:CentOS-6':
   - match: grain
   - ssh_key
