FILESEXTRAPATHS_append_artik10 := "${THISDIR}/${PN}"
FILESEXTRAPATHS_append_artik53x := ":${THISDIR}/${PN}"

SRC_URI_artik53x = " \
    file://resin-530s-spidev \
"
do_install_artik53x() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/resin-530s-spidev ${D}${bindir}
}

