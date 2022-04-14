################################################################################
#
# crosvm
#
################################################################################

CROSVM_VERSION = origin/main
CROSVM_SITE = https://chromium.googlesource.com/chromiumos/platform/crosvm
CROSVM_SITE_METHOD = git
CROSVM_GIT_SUBMODULES = true
#CROSVM_SOURCE = foo-$(CROSVM_VERSION).tar.gz
CROSVM_LICENSE = BSD
CROSVM_LICENSE_FILES = LICENSE
CROSVM_CARGO_BUILD_OPTS = --no-default-features

CROSVM_DEPENDENCIES = libcap
CROSVM_INSTALL_STAGING = YES

$(eval $(cargo-package))

