THEOS_DEVICE_IP = 192.168.3.248
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include theos/makefiles/common.mk

TWEAK_NAME = ChangeUrl
ChangeUrl_FILES = hooks/NSURLConnectionHook.xm hooks/NSUIWebViewHook.xm

include $(THEOS_MAKE_PATH)/tweak.mk