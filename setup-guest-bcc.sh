adeb shell apt update
adeb shell apt install -y arping bison clang-format cmake dh-python \
  dpkg-dev pkg-kde-tools ethtool flex inetutils-ping iperf \
  libbpf-dev libclang-dev auditd libedit-dev libelf-dev \
  libfl-dev libzip-dev linux-libc-dev llvm-dev libluajit-5.1-dev \
  luajit python3-netaddr python3-pyroute2 python3-distutils python3 git
adeb shell git clone https://github.com/iovisor/bcc.git -b v0.24.0 /usr/local/share/bcc
adeb shell "mkdir /usr/local/share/bcc/build; cd /usr/local/share/bcc/build; cmake .. && make -j8 && make install"
adeb shell "rm /usr/bin/python; ln -s /usr/bin/python3 /usr/bin/python"
adeb shell 'mkdir -p /lib/modules/`uname -r`; ln -s /usr/src/linux-headers-`uname -r` /lib/modules/`uname -r`/build'
adb shell "mkdir -p /usr/src/; cp -r /data/usr/src/* /usr/src/"
adeb shell
