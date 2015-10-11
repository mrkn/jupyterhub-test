#!/bin/bash

function execute() {
  echo "$@"
  "$@"
}

function list_installed_linux_image() {
  dpkg-query -f '${Package} ${Status}\n' -W 'linux-image-[0-9]*-generic' | grep 'ok installed'
}

execute apt-get update -y
execute apt-get dist-upgrade -y --force-yes

current_kernel_package="linux-image-$(uname -r)"
latest_kernel_package=$(list_installed_linux_image | sort -r | head -1 | cut -f1 -d' ')

echo "current_kernel_package: ${current_kernel_package}"
echo "latest_kernel_package:  ${latest_kernel_package}"

if [ "${current_kernel_package}" != "${latest_kernel_package}" ]; then
  echo "Rebooting for upgrading kernel version."
  echo "Provition again with this command: vagrant reload --provision"
  reboot
  exit 1
fi

exit 0
