__virtualname__ = 'hostname'
def __virtual__():
    '''
        Kiem tra HDH
    '''
    os_support = ['RedHat']
    if __grains__.get('os_family') in os_support:
        return __virtualname__
    return (False,"this module not support your os")


def change_hostname(name):
    '''
        Doi ten host name

        Cli:
        salt '*' hostname.change_hostname [ten host]
    '''
    #out = __salt__['file.append'](path='/tmp/test',args='hahahahaha')
    write = __salt__['file.write'](path='/etc/hostname',args=name)
    cmd = '/bin/hostname -F /etc/hostname'
    run_cmd = __salt__['cmd.run_stdout'](cmd, output_loglevel='trace')
    return (write,run_cmd)
