// +build darwin dragonfly freebsd linux,!arm64 netbsd openbsd
// +build linux,!loong64

package panicwrap

import (
	"syscall"
)

func dup2(oldfd, newfd int) error {
	return syscall.Dup2(oldfd, newfd)
}
