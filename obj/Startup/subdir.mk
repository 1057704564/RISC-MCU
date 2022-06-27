################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
D:/下载/github/开发板/opench-ch32v307-master/firmware/SRC/Startup/startup_ch32v30x.S 

OBJS += \
./Startup/startup_ch32v30x.o 

S_UPPER_DEPS += \
./Startup/startup_ch32v30x.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/startup_ch32v30x.o: D:/下载/github/开发板/opench-ch32v307-master/firmware/SRC/Startup/startup_ch32v30x.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -x assembler -I"D:\下载\github\开发板\opench-ch32v307-master\firmware\SRC\Startup" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

