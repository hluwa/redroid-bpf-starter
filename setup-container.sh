docker run -itd --memory-swappiness=0 --name redroid-13 \
	--privileged \
	--pull always \
	-v /usr/src/:/data/usr/src/ \
	-p 5555:5555 \
	redroid/redroid:13.0.0-arm64 \
	redroid.gpu.mode=guest
