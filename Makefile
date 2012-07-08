# $OpenBSD$

PROG=	tmux
SRCS=	arguments.c \
	attributes.c \
	cfg.c \
	client.c \
	clock.c \
	cmd-attach-session.c \
	cmd-bind-key.c \
	cmd-break-pane.c \
	cmd-capture-pane.c \
	cmd-choose-buffer.c \
	cmd-choose-client.c \
	cmd-choose-session.c \
	cmd-choose-window.c \
	cmd-clear-history.c \
	cmd-clock-mode.c \
	cmd-command-prompt.c \
	cmd-confirm-before.c \
	cmd-copy-mode.c \
	cmd-delete-buffer.c \
	cmd-detach-client.c \
	cmd-display-message.c \
	cmd-display-panes.c \
	cmd-find-window.c \
	cmd-has-session.c \
	cmd-if-shell.c \
	cmd-join-pane.c \
	cmd-kill-pane.c \
	cmd-kill-server.c \
	cmd-kill-session.c \
	cmd-kill-window.c \
	cmd-link-window.c \
	cmd-list-buffers.c \
	cmd-list-clients.c \
	cmd-list-commands.c \
	cmd-list-keys.c \
	cmd-list-panes.c \
	cmd-list-sessions.c \
	cmd-list-windows.c \
	cmd-list.c \
	cmd-load-buffer.c \
	cmd-lock-server.c \
	cmd-move-window.c \
	cmd-new-session.c \
	cmd-new-window.c \
	cmd-paste-buffer.c \
	cmd-pipe-pane.c \
	cmd-refresh-client.c \
	cmd-rename-session.c \
	cmd-rename-window.c \
	cmd-resize-pane.c \
	cmd-respawn-pane.c \
	cmd-respawn-window.c \
	cmd-rotate-window.c \
	cmd-run-shell.c \
	cmd-save-buffer.c \
	cmd-select-layout.c \
	cmd-select-pane.c \
	cmd-select-window.c \
	cmd-send-keys.c \
	cmd-send-prefix.c \
	cmd-server-info.c \
	cmd-set-buffer.c \
	cmd-set-environment.c \
	cmd-set-option.c \
	cmd-show-buffer.c \
	cmd-show-environment.c \
	cmd-show-messages.c \
	cmd-show-options.c \
	cmd-source-file.c \
	cmd-split-window.c \
	cmd-start-server.c \
	cmd-string.c \
	cmd-suspend-client.c \
	cmd-swap-pane.c \
	cmd-swap-window.c \
	cmd-switch-client.c \
	cmd-unbind-key.c \
	cmd-unlink-window.c \
	cmd.c \
	colour.c \
	control.c \
	environ.c \
	format.c \
	grid-utf8.c \
	grid-view.c \
	grid.c \
	input-keys.c \
	input.c \
	job.c \
	key-bindings.c \
	key-string.c \
	layout-custom.c \
	layout-set.c \
	layout.c \
	log.c \
	mode-key.c \
	names.c \
	notify.c \
	options-table.c \
	options.c \
	paste.c \
	procname.c \
	resize.c \
	screen-redraw.c \
	screen-write.c \
	screen.c \
	server-client.c \
	server-fn.c \
	server-window.c \
	server.c \
	session.c \
	signal.c \
	status.c \
	tmux.c \
	tty-acs.c \
	tty-keys.c \
	tty-term.c \
	tty.c \
	utf8.c \
	window-choose.c \
	window-clock.c \
	window-copy.c \
	window.c \
	xmalloc.c \
	xterm-keys.c

CDIAGFLAGS+= -Wno-long-long -Wall -W -Wnested-externs -Wformat=2
CDIAGFLAGS+= -Wmissing-prototypes -Wstrict-prototypes -Wmissing-declarations
CDIAGFLAGS+= -Wwrite-strings -Wshadow -Wpointer-arith -Wsign-compare
CDIAGFLAGS+= -Wundef -Wbad-function-cast -Winline -Wcast-align

LDADD=  -lutil -lcurses -levent
DPADD=  ${LIBUTIL} ${LIBCURSES} ${LIBEVENT}

.include <bsd.prog.mk>
