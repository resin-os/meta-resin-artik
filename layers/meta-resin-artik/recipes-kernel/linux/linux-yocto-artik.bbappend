FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append = " \
    file://0001-Revert-get-rid-of-s_files-and-files_lock.patch \
    file://aufs-builtin.patch \
    file://adapt_aufs_changes.patch \
    "

inherit kernel-resin
RESIN_CONFIGS_append = " kitra"
RESIN_CONFIGS[kitra] = " \
    CONFIG_SND_SOC_SGTL5000=m \
"
