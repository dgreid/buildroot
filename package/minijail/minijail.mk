################################################################################
#
# minijail
#
################################################################################

MINIJAIL_VERSION = master
MINIJAIL_SITE = https://android.googlesource.com/platform/external/minijail
MINIJAIL_SITE_METHOD = git
#TODO - use v18 once tagged on github
#MINIJAIL_VERSION = 17
#MINIJAIL_SOURCE = linux-v$(MINIJAIL_VERSION).tar.gz
#MINIJAIL_SITE = https://github.com/google/minijail/archive
MINIJAIL_LICENSE = BSD
MINIJAIL_LICENSE_FILES = LICENSE

MINIJAIL_DEPENDENCIES = libcap
MINIJAIL_INSTALL_STAGING = YES

define MINIJAIL_BUILD_CMDS
      $(TARGET_MAKE_ENV) \
	LD="$(TARGET_LD)" \
	CC="$(TARGET_CC)" \
	      $(MAKE) -C $(@D) OUT=$(@D) all
endef

define MINIJAIL_INSTALL_STAGING_CMDS
	cp $(@D)/minijail0 $(TARGET_DIR)/bin
	cp $(@D)/libminijail.so $(TARGET_DIR)/lib
	cp $(@D)/libminijailpreload.so $(TARGET_DIR)/lib
endef

define MINIJAIL_INSTALL_TARGET_CMDS
	cp $(@D)/minijail0 $(TARGET_DIR)/bin
	cp $(@D)/libminijail.so $(TARGET_DIR)/lib
	cp $(@D)/libminijailpreload.so $(TARGET_DIR)/lib
endef

$(eval $(generic-package))
