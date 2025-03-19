
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = '7ff9265b130c8d684cbbbb730e4867c8ea335f52'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-tuanti1997qn.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# define LDD_BUILD_CMDS
# 	# $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
# 	# $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
# endef

LDD_MODULE_SUBDIRS = misc-modules scull
LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)
# define LDD_BUILD_CMDS
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull
# endef
# define LDD_INSTALL_TARGET_CMDS
# endef

$(eval $(kernel-module))
$(eval $(generic-package))
