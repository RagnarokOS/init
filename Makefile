# Makefile for Ragnarok's rc.

RC_SCRIPTS = rc.poweroff rc.single rc.default rc.reboot rc.sysinit
MAN_PAGES = rcctl.8 rc.8 rc.conf.8

install:
	install -d -m 755 -g 0 -o root ${DESTDIR}/etc
	install -d -m 755 -g 0 -o root ${DESTDIR}/etc/rc.d
	install -d -m 755 -g 0 -o root ${DESTDIR}/usr
	install -d -m 755 -g 0 -o root ${DESTDIR}/usr/bin
	install -d -m 755 -g 0 -o root ${DESTDIR}/usr/share/man/man8
	cd etc/rc.d; \
		install -m 644 -g 0 -o root rc.subr ${DESTDIR}/etc/rc.d && \
		install -m 755 -g 0 -o root ${RC_SCRIPTS} ${DESTDIR}/etc/rc.d
	install -m 644 -g 0 -o root etc/inittab ${DESTDIR}/etc/inittab
	install -m 644 -g 0 -o root etc/rc.conf${DESTDIR}/etc/rc.conf
	install -m 755 -g 0 -o root etc/rcctl ${DESTDIR}/usr/bin/rcctl
	cd usr/share/man/man8; \
		install -m 644 ${MAN_PAGES} ${DESTDIR}/usr/share/man/man8
