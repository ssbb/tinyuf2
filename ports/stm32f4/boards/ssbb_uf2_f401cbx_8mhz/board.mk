CFLAGS += \
  -DSTM32F401xC \
  -DHSE_VALUE=8000000U

SRC_S += \
	$(ST_CMSIS)/Source/Templates/gcc/startup_stm32f401xc.s

# For flash-jlink target
JLINK_DEVICE = stm32f401cb

flash: flash-dfu-util
erase: erase-jlink