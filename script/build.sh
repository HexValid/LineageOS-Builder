#!/bin/bash
source build/envsetup.sh
#patch  --no-backup-if-mismatch -p1 -i ok/android_frameworks_base-signature_spoof.patch
#patch  --no-backup-if-mismatch -p1 -i ok/packages_apps_updater-adjust_url.patch
#patch  --no-backup-if-mismatch -p1 -i ok/packages_apps_SetupWizard-add_microg_repo.patch

breakfast n7100
export USE_CCACHE=1
ccache -M 50G
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx5G"
croot
brunch n7100
