apt install linux-modules-extra-`uname -r` unzip adb
modprobe binder_linux devices="binder,hwbinder,vndbinder" && modprobe ashmem_linux
snap install docker && snap start docker
