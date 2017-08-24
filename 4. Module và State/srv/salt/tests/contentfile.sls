write_to_file:
  file.managed:
    - name: /tmp/testfile.txt
    - user: root
    - group: root
    - mode: 644
    - replace: true
    - contents: |
        this is test
        test
