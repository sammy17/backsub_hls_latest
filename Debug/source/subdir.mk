################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../core.cpp 

OBJS += \
./source/core.o 

CPP_DEPS += \
./source/core.d 


# Each subdirectory must supply rules for building sources it contributes
source/core.o: /home/supuni/Vivado_tutorial/backsub_hls_new/core.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__kernel -D__global -Dglobal -Dlocal -D__local -Dconstant -D__constant -Dprivate -D__private -D__private -I/home/supuni/Vivado_tutorial -I/opt/Xilinx/Vivado_HLS/2014.4/include/ap_sysc -I/opt/Xilinx/Vivado_HLS/2014.4/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2014.4/include -I/opt/Xilinx/Vivado_HLS/2014.4/lnx64/tools/auto_cc/include -I/opt/Xilinx/Vivado_HLS/2014.4/include/etc -I/home/chathura/HoG_IP -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


