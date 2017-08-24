[root@master salt]# salt '*' state.sls apache
minion1:
----------
          ID: install_apache
    Function: pkg.installed
        Name: httpd
      Result: True
     Comment: Package httpd is already installed
     Started: 03:14:05.399948
    Duration: 806.52 ms
     Changes:

Summary for minion1
------------
Succeeded: 1
Failed:    0
------------
Total states run:     1
Total run time: 806.520 ms
###########################################
[root@master salt]# salt '*' state.sls apache
minion1:
----------
          ID: install_apache
    Function: pkg.installed
        Name: httpd
      Result: True
     Comment: The following packages were installed/updated: httpd
     Started: 03:27:23.192340
    Duration: 73532.439 ms
     Changes:
              ----------
              httpd:
                  ----------
                  new:
                      2.4.6-45.el7.centos.4
                  old:

Summary for minion1
------------
Succeeded: 1 (changed=1)
Failed:    0
------------
Total states run:     1
Total run time:  73.532 s
