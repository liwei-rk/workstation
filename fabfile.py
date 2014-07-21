from fabric.api import *
CLUSTER=[
        "lw@10.61.1.22",
        "lw@10.61.1.23",
        "lw@10.61.1.25"]
CLUSTER2=[
        #"lw@localhost",
        "wde@10.61.1.93",
        "wde@10.61.1.94",
        "wde@10.61.1.95",
         ]
CLUSTER3=[
        #"lw@localhost",
        "root@10.61.1.93",
        "root@10.61.1.94",
        "root@10.61.1.95",
         ]
env.hosts=CLUSTER2
HBASE_HOME='~/hbase'
def ssh_keygen():
    local("ssh-keygen -t rsa")
def ssh_copy_id():
    local('ssh-copy-id -i ~/.ssh/id_rsa.pub %s' % env.user+"@"+env.host)
def nopass():
    execute(ssh_copy_id)
@hosts(CLUSTER2)
def allInOne(cwd,command):
    print env.host_string
    with cd(cwd):
        run(command)
@hosts(CLUSTER2)
def scp(src,des):
    local("scp "+src+" "+env.host_string+":"+des)
@hosts(CLUSTER2)
#used for fabric api test
def test():
    print "%(host)s %(user)s"%env

@hosts(CLUSTER3)
def freeCache():
    run('sync;sync;sync;')
    run('echo 3 > /proc/sys/vm/drop_caches')
