# redroid-bpf-starter

1. Install Docker, Redroid Drivers, Tools, Headers: `sudo ./setup-host-ubuntu20.sh`
2. Create Redroid-13-arm64 Instance: `sudo ./setup-container.sh`
3. Install ADEB in Host: `sudo ./setup-host-adeb.sh`
4. Install ADEB in Redroid: `./setup-guest-adeb.sh`
5. Compile and Install BCC in Redroid: `./setup-guest-bcc.sh`

## Destroy

`sudo docker rm -f redroid-13`

## Tips

1. BCC compilation is v0.24.0 with LLVM7, later version require LLVM10.
2. ADEB cannot see docker mapped `/usr/src` filesystem, so linux headers is copied into `/usr/src` form ADB shell.
3. You need an AArch64 Host, or switch docker image to `redroid:*-amd64`, See details on [redroid-doc](https://github.com/remote-android/redroid-doc).
4. BPF features depends on kernel for Host.
5. Happy BPF learning ~