################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/����/github/������/opench-ch32v307-master/firmware/SRC/Debug/debug.c 

OBJS += \
./Debug/debug.o 

C_DEPS += \
./Debug/debug.d 


# Each subdirectory must supply rules for building sources it contributes
Debug/debug.o: D:/����/github/������/opench-ch32v307-master/firmware/SRC/Debug/debug.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"D:\����\github\������\opench-ch32v307-master\firmware\SRC\Debug" -I"D:\����\github\������\opench-ch32v307-master\firmware\SRC\Core" -I"D:\����\github\������\opench-ch32v307-master\firmware\Integrated_Test\User" -I"D:\����\github\������\opench-ch32v307-master\firmware\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
