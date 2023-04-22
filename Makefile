# Makefile for Ragnarok's rc.

install:
	install -d -m 755 -g 0 -o root ${DESTDIR}/etc
	install -d -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d
	install -d -m 755 -g 0 -o root ${DESTDIR}/usr
	install -d -m 755 -g 0 -o root ${DESTDIR}/usr/bin
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d/rc.poweroff
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d/rc.single
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d/rc.default
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d/rc.reboot
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d/rc.sysinit
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d/rc.subr
	install -m 755 -g 0 -o root ${DESTDIR}/etc/inittab
	install -m 755 -g 0 -o root ${DESTDIR}/etc/rc.conf
	install -m 755 -g 0 -o root ${DESTDIR}/usr/bin/rcctl
