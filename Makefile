TARGET := iphone:clang:latest:latest
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_DEVICE_IP=192.168.1.216

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Notif10

Notif10_FILES = Tweak.x
Notif10_LIBRARIES = Cosmic
Notif10_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
