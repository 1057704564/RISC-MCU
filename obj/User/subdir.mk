################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/AHT_10.c \
../User/AP3216C.c \
../User/IIC.c \
../User/MPU6050.c \
../User/ch32v30x_it.c \
../User/es8388.c \
../User/lcd.c \
../User/main.c \
../User/system_ch32v30x.c 

OBJS += \
./User/AHT_10.o \
./User/AP3216C.o \
./User/IIC.o \
./User/MPU6050.o \
./User/ch32v30x_it.o \
./User/es8388.o \
./User/lcd.o \
./User/main.o \
./User/system_ch32v30x.o 

C_DEPS += \
./User/AHT_10.d \
./User/AP3216C.d \
./User/IIC.d \
./User/MPU6050.d \
./User/ch32v30x_it.d \
./User/es8388.d \
./User/lcd.d \
./User/main.d \
./User/system_ch32v30x.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"D:\下载\github\开发板\opench-ch32v307-master\firmware\SRC\Debug" -I"D:\下载\github\开发板\opench-ch32v307-master\firmware\SRC\Core" -I"D:\下载\github\开发板\opench-ch32v307-master\firmware\Integrated_Test\User" -I"D:\下载\github\开发板\opench-ch32v307-master\firmware\SRC\Peripheral\inc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

