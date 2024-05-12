#! /bin/bash


post_install () {
	systemctl enable --now pacman-auto-download.timer || true
}


post_upgrade () {
	systemctl --system daemon-reload >/dev/null || true
	systemctl restart pacman-auto-download.timer || true
}


pre_remove () {
	systemctl disable --now pacman-auto-download.timer >/dev/null
}


post_remove () {
	systemctl --system daemon-reload >/dev/null || true
}
