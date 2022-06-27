# 基于RISC-MCU的蔬菜大棚环境检测
通过对CH32V307的开发文档和技术手册了解，根据开发板本身的硬件进行扩展，利用编程，让其硬件各司其职，获取蔬菜大棚的环境数据信息。
1.1	整体介绍
![image](https://user-images.githubusercontent.com/58928827/175905081-14973f8b-5220-4855-8a5b-e13d664b9ac0.png)
![image](https://user-images.githubusercontent.com/58928827/175905137-e08a9fcf-920f-42a3-b827-7531e521771c.png)
除上述框图介绍的模块外，还有其他可扩充的接口。
赤菟 V307（CH32V307VCT6）采用沁恒自研 RISC-V 内核青稞 V4F，最高主频 144MHz，支持单精度浮点运算（FPU），提供高速 USB（480Mbps）接口并内置 PHY、千兆以太网 MAC 并内置 10M PHY，还提供 CAN、DVP、SPI、 I2S 等多个接口。
V4F支持RISC-V指令集IMAFC子集，增加了单精度浮点运算。处理器内部以模块化管理，包含快速可编程中断控制器（FPIC）、内存保护、分支预测模式、扩展指令支持等单元。对外多组总线与外部单元模块相连，实现外部功能模块和内核的交互。RV32IMAFC 指令集，小端数据模式。
处理器以其极简指令集、多种工作模式、模块化定制扩展等特点可以灵活应用不同场景微控制器设计，例如小面积低功耗嵌入式场景、高性能应用操作系统场景等。
（1）	支持机器和用户特权模式
（2）	快速可编程中断控制器（FPIC）
（3）	多级硬件中断堆栈
（4）	串行2线调试接口
（5）	标准内存保护设计
（6）	静态或动态分支预测、高效跳转、冲突检测机制
（7）	自定义扩展指令
1.2　各模块介绍
根据总体系统框图，给出各模块的具体设计说明。
	AHT10模块
（1）	输入电压范围:2.3V至3.3V
（2）	出厂经过标定校准，产品具有温度补偿功能;
（3）	具有I2C接口;
（4）	超低功耗;
（5）	SMD封装;
（6）	湿度精度±3% RH(典型值);
（7）	温度精度0.5℃(典型值)。
![image](https://user-images.githubusercontent.com/58928827/175905371-2724f4b2-594f-4540-adf3-847721b26631.png)

AHT10模块的引脚
4根引脚，名称与功能如下：
vin 为外接供电电源输入端
GND 地线
SCL I2C通信模式时钟信号
SDA I2C通信模式数据信号
	AP3216C模块
	AP3216C集成了一个光照强度（ALS）、接近距离（PS）和红外线强度（IR）这三个传感器为一体。
	AP3216C内置的接近传感器可以用于检测是否有物体接近，可以用环境光传感器检测光照强度。 
![image](https://user-images.githubusercontent.com/58928827/175905427-25325281-a104-44c6-9c20-cdcfb867d011.png)
CH9141模块
	CH9141是一款蓝牙串口透传芯片，芯片支持广播模式、主机模式和从机模式，支持蓝牙BLE4.2。支持串口AT配置和在从机模式下的蓝牙通信配置，支持MODEM联络信号，并提供通用GPIO、同步GPIO、ADC 采集功能，串口波特率最高1Mbps。
提供电脑端虚拟串口驱动可使蓝牙接口直接使用串口调试工具、兼容串口应用程序，无需二次开发即可与串口接口通讯，轻松让串口实现免插线和不受线缆距离限制。
![image](https://user-images.githubusercontent.com/58928827/175905509-a29c972e-f5ae-4950-bc9c-2f7ab8ba6020.png)
![image](https://user-images.githubusercontent.com/58928827/175905557-4d99e34e-953a-42f0-bbc4-ed1ec0d3439c.png)
![image](https://user-images.githubusercontent.com/58928827/175905601-7c21ec21-ef9d-4d4c-a468-a5a398c44829.png)
2.1完成情况及性能参数
	实时测试
	根据所选环境进行探测
![image](https://user-images.githubusercontent.com/58928827/175905705-186cce15-97bb-446c-9be6-09e50eaf2cdf.png)
通过对当前环境的检测，得到的信息有：
	温度：31
	湿度：50
	红外线强度(IR)：9
	接近距离(PS)：0
	环境光强度(ALS)：37
电脑端通过蓝牙实时获取的信息：
![image](https://user-images.githubusercontent.com/58928827/175905816-fc06b087-f8d5-4979-bfd2-3af5c1ac23d1.png)
手机端通过蓝牙实时获取的信息
![image](https://user-images.githubusercontent.com/58928827/175905870-1faf7aa1-2a13-40d7-b2f5-fe928d0e1706.png)
![image](https://user-images.githubusercontent.com/58928827/175905896-5069f33a-d403-470b-80b5-d86dd4fda4a6.png)
![image](https://user-images.githubusercontent.com/58928827/175905924-3139ec4c-017d-408f-b324-aa35692e777e.png)









