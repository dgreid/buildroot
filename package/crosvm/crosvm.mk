################################################################################
#
# crosvm
#
################################################################################

CROSVM_VERSION = topic/riscv_rebase
#CROSVM_SITE = https://chromium.googlesource.com/chromiumos/platform/crosvm
CROSVM_SITE = https://github.com/dgreid/crosvm
CROSVM_SITE_METHOD = git
CROSVM_GIT_SUBMODULES = true
#CROSVM_SOURCE = foo-$(CROSVM_VERSION).tar.gz
CROSVM_LICENSE = BSD
CROSVM_LICENSE_FILES = LICENSE
CROSVM_CARGO_BUILD_OPTS = --no-default-features
CROSVM_CARGO_INSTALL_OPTS = --no-default-features
CROSVM_CARGO_ENV = PKG_CONFIG_ALLOW_CROSS="true" CROS_RUST=1

CROSVM_DEPENDENCIES = libcap
CROSVM_INSTALL_STAGING = YES

$(eval $(cargo-package))

