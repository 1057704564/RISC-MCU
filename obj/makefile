################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
Integrated_Test.hex \

SECONDARY_LIST += \
Integrated_Test.lst \

SECONDARY_SIZE += \
Integrated_Test.siz \


# 所有目标
all: Integrated_Test.elf secondary-outputs

# 工具调用
Integrated_Test.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -T "D:\下载\github\开发板\opench-ch32v307-master\firmware\SRC\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"Integrated_Test.map" --specs=nano.specs --specs=nosys.specs -o "Integrated_Test.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
Integrated_Test.hex: Integrated_Test.elf
	@	riscv-none-embed-objcopy -O ihex "Integrated_Test.elf"  "Integrated_Test.hex"
	@	@
Integrated_Test.lst: Integrated_Test.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble "Integrated_Test.elf" > "Integrated_Test.lst"
	@	@
Integrated_Test.siz: Integrated_Test.elf
	@	riscv-none-embed-size --format=berkeley "Integrated_Test.elf"
	@	@
# 其他目标
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) Integrated_Test.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
