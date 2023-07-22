**Lenovo ThinkPad T430 Hackintosh OpenCore**

## 支持状态
* OpenCore 0.9.3, 硬盘选择界面 已启用 GUI + duang~
* macOS Catalina 10.15.7
* macOS Big Sur 11.7.4
> macOS Monterey + Ventura 均未进行安装测试
>> 因为不仅 Monterey + Ventura 去除 HD4000 的官方支持，还移除了对 Ivy Bridge Turbo 官方支持。

> 来自[5T33Z0](https://github.com/5T33Z0/Lenovo-T530-Hackintosh-OpenCore/blob/main/README.md#recommended-macos-version) 的推荐，i7 使用 `MacBookPro10,1` i5 使用 `MacBookPro10,2`，系统推荐 `macOS Big Sur`，干活的话推荐 `macOS Catalina`

- ✅ 电池百分比
- ✅ 蓝牙
- ✅ 亮度调节
- ✅ 摄像头
- ✅ CPU 电源管理
- ✅ GPU Intel HD4000
- ✅ 英特尔以太网
- ✅ 键盘 `音量加减和静音` `麦克风关闭` `亮度+-` `开关Wi-Fi` `键盘灯`*
- ✅ 睡眠/唤醒 `使用休眠快捷键，有概率会黑屏无背光`
- ✅ 声音`耳机自动检测，静音，音量控制完全工作`
- ✅ 触摸板
- ✅ 小红点
- ✅ 10个USB全正常工作，包括 Dock 上的 USB3
- ✅ MiniDP 显示输出
- ✅ SD卡读卡器
- ✅ Wi-Fi 博通 BCM94352HMB a/b/g/n/ac
- ❓ Wi-Fi Intel 3*3 Centrino Ultimate-N 6300 agn, [必须使用非原生APP](https://github.co/penIntelWireless/HeliPort)
- ❓ Lenovo Mini Dock Statiosn 4337 USB3, `Mic` 在使用不同的 `layout-id` 时，可能无法使用。
- ❌ 指纹
- ❌ VGA （苹果电脑没这玩意）

> *需要安装[ThinkpadAssistant](https://github.com/MSzturc/ThinkpadAssistant/releases)，再设置自启动。

### 可能存在的问题
- 显卡驱动 `WhateverGreen` 有概率在 `900p` 分辨率屏幕上出现以下现象：开机登录界面慢慢变换成白屏，合盖再打开即可正常。
- Fn+F4 休眠有概率唤醒后无背光，使用系统菜单选择休眠或者直接合盖，不会出现此问题。

## 硬件

| 功能部件 | 规格 |
| --: | :-- |
| 型号     | [Lenovo ThinkPad T430](https://psref.lenovo.com/syspool/Sys/PDF/withdrawnbook/ThinkPad_T430.pdf) Type: 2342 |
| 主板     | [Mobile Intel QM77 ](https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/7-series-chipset-pch-datasheet.pdf) |
| BIOS版本 | G1ETC2WW (2.82 ) EC:G1HT36WW 1vyRain Mod |
| 处理器   | Intel Core i5-3340M |
| 内存     | 16GB Kingston DDR3 1600MHz |
| 硬盘     | Kingston 120GB |
| 显卡     | Intel HD Graphics 4000 |
| 显示屏   | 14" 768p/900p TN Display |
| 声卡     | Realtek ALC269 (Layout-id:18 or 23 or 39 or 55)|
| 网卡     | Intel 82579LM Gigabit Network Connection |
| Wi-Fi    | Broadcom BCM94352HMB / AW-CE123H, 802.11 a/b/g/n/ac|
| 蓝牙     | BCM20702 *2 (机身内置 + AW-CE123H 内置) |
| 读卡器   | 内置 Ricoh PCIe 读卡器 (MMC, SD, SDHC, SDXC)|

> 如果你要升级你的硬件，请参考官方维护手册：https://download.lenovo.com/ibmdl/pub/pc/pccbbs/mobiles_pdf/t430_t430i_hmm_en_0b48304_04.pdf

## 工具

- [ProperTree](https://github.com/corpnewt/ProperTree)
- [MountEFI](https://github.com/corpnewt/MountEFI)
- [IORegistryClone](https://github.com/khronokernel/IORegistryClone)
- [Hackintool](https://www.insanelymac.com/forum/topic/335018-hackintool-v286/)
- [Intel Power Gadget](https://www.intel.com/content/www/us/en/developer/articles/tool/power-gadget.html)
- [OpenCore 插件清单](https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/Kexts.md)
- [Lilu 插件清单](https://github.com/acidanthera/Lilu/blob/master/KnownPlugins.md)
- [MaciASL](https://github.com/acidanthera/MaciASL)

## 教程

- [Dortania 所有教程列表](https://dortania.github.io/getting-started/)
- [Dortania 安装教程](https://dortania.github.io/OpenCore-Install-Guide/)
- [Dortania 安装后教程](https://dortania.github.io/OpenCore-Post-Install/)
- [Dortania ACPI补丁教程](https://dortania.github.io/Getting-Started-With-ACPI/)
- [Dortania 多系统启动教程](https://dortania.github.io/OpenCore-Multiboot/)
- [Dortania `USB 映射` 教程](https://dortania.github.io/OpenCore-Post-Install/usb/)
- [WhateverGreen Intel HD 手册](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.IntelHD.cn.md)
- [OpenCore 简体中文参考手册](https://github.com/SukkaW/OpenCore-Document-zh_Hans) 或者 [官网](https://oc.skk.moe/)
- [Opencore 引导的相关设置](https://blog.xjn819.com/post/opencore-guide.html)
- [黑客小兵 补丁教程](https://github.com/daliansky/OC-little) 或者 [不稳定的官方网站](https://ocbook.tlhub.cn/)
- [OpenCore 补丁教程英文扩充版](https://github.com/5T33Z0/OC-Little-Translated)
- [国光黑苹果教程](https://github.com/sqlsec/Hackintosh) 或者 [不稳定的官方网站](https://apple.sqlsec.com/)
- 每个 `OpenCore` 附带的`Configuration.pdf` 和 `Differences.pdf`

## BIOS 设置

### 禁用

* Fast Boot
* Secure Boot
* Serial/COM Port
* Parallel Port
* VT-d (如果BIOS中关不掉，替代方法是将 `config.plist` 里 `DisableIoMapper`设置为 `启用`)
* Compatibility Support Module (CSM) (**大部分情况设置为关闭, 当启用此选项时，可能会导致“gIO”这样的GPU错误**)
* Thunderbolt/雷电 (安装时关闭，安装完成再打开试试)
* Intel SGX
* Intel Platform Trust
* CFG Lock (MSR 0xE2 write protection)(**这个必须关闭，如果你找不到这个选项，替代方法是是在 Kernel -> Quirks 下启用`AppleCpuPmCfgLock`。如果启用CFG-Lock，您的黑苹果会无法启动**)

### 启用

* VT-x
* Above 4G Decoding
* Hyper-Threading
* Execute Disable Bit
* EHCI/XHCI Hand-off
* OS type: Windows 8.1/10 UEFI Mode (some motherboards may require "Other OS" instead)
* DVMT Pre-Allocated(iGPU Memory): 32MB or higher
* SATA Mode: AHCI

### T430 BIOS 设置
| TAB      |  Submenu          | Function                          | Setting    |
| -------- | :---------------: | ------------------------------- | :----------|
| **Config**   | USB               | <ul> <li>UEFI BIOS Support<li>USB 3.0 Mode    | `Enabled` <br> `Enabled` |
|          |Display|  <ul><li>Boot Display Device:<li>OS Detection for NVIDIA Optimus: | `ThinkPad LCD` </br> `Disabled` |
||SATA | SATA Controller Mode |`AHCI` |
||CPU | <ul><li>Core Multi-Processing <li> Intel (R) Hyper-Threading Technology|`Enabled` <br> `Enabled` |
| **Advanced** | System Agent (SA) configuration | Graphics Configuration <br> <li> DVMT Pre-Allocated <br> <li> DVMT Total Gfx Mem | `128MB` <br> `MAX` |
| **Security** |– |Security Chip                                   | `Disabled`|
||UEFI BIOS Update Options|<ul><li> Flash BIOS Updating by End-Users<li>  Secure Rollback Prevention: `Enabled`|`Enabled` <br> `Enabled`  |
|          | –|Memory Protection |            `Enabled` |
|          | Virtualization  | Intel Virtualization Technology  <br> Intel VT-d | `Enabled` <br> `Disabled`  |
||I/O Port Access | <ul><li> Wireless WAN <li> ExpressCard Slot <li> eSATA Port <li> Fingerprint Reader <li> Antitheft and Computrace <li> Secure Boot | `Disabled` |
| Startup  | –|UEFI/Legacy Boot                                   | `UEFI Only` |
|          | – |CSM Support                                      | `Disabled`  |
|          | –|Boot Mode                                          | `Quick`     |
|          | – |Boot Order Lock | `Enabled`     |


## macOS 安装

- 跟着 [Dortania 教程](https://dortania.github.io/getting-started/) 做出一个 [USB Recovery Installer](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/windows-install.html), 从网络上下载 macOS 镜像 进行安装到本机。

- 将我的 EFI 复制到 U盘

### 自定义 `config.plist`
- [参考Dortania教程](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/ivy-bridge.html/)，比如
    + 如果你的CPU不是 `i5-3340M` 请禁用 `ACPI` - `SSDT-PM.aml`，并配置 `ACPI` - `Delete` - `cpuPm` + `Cpu0lst` 为启用（每项两个，共四个 `True`）。
    + [PlatformInfo](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/ivy-bridge.html#platforminfo) 填入用 [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS) 生成你专属的 [MacBookPro](https://support.apple.com/en-us/HT201300) 序列号。
    + [DeviceProperties](https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/ivy-bridge.html#deviceproperties) 处 `AAPL,ig-platform-id` 的值，使其对应你的 900p 1080p 显示屏。
    + ALC269 声卡有很多 [layout-id](https://github.com/acidanthera/AppleALC/wiki/Supported-codecs)，如果你用 Lenovo Mini Dock Statiosn 4336/4337/4338 那么你可能需要修改 `layout-id`，每个都试一遍，不停的尝试。

- `EFI/ACPI` 内所有 `SSDT-*.aml` 均来自 [banhbaoxamlan/X230-Hackintosh](https://github.com/banhbaoxamlan/X230-Hackintosh/tree/4507b5e0ffaef345365a430ebf22952a046d867f), 及 [5T33Z0](https://github.com/5T33Z0/Lenovo-T530-Hackintosh-OpenCore)
> 我使用 [iasl](https://acpica.org/downloads/binary-tools) 反编译，经过对比 `SSDT-KBD-X220.aml` 去除了 `Fn+space` 快捷键。可能因为换了新键盘没有这个快捷键。

### 开机
- 从U盘启动，有报错的话去试其他人的 `EFI`。

### 安装完成
- 一切顺利？
    + `启用` 两项 `ACPI` - `Delete` - `cpuPm` + `Cpu0lst`
    + 进 macOS 用 [ssdtPRGen.sh](https://github.com/Piker-Alpha/ssdtPRGen.sh) 生成自己 CPU 的 `SSDT-PM.aml`，或者去 [5T33Z0](https://github.com/5T33Z0/Lenovo-T530-Hackintosh-OpenCore/tree/main/ACPI/SSDT-PM) 看看你的 CPU 在不在列表里面, 下载一个来用。
    + 替换 `SSDT-PM.aml` 再把 第一步 启用的选项再关闭

### 善后
- USB 不能工作？你不会把我禁用的 `ACPI` - `SSDT-EHC1.aml` 给又启用了吧。如果禁用后还不能工作，请使用 [USBInjectAll](https://github.com/CrisHotpatch/USBInjectAll), 开启全部 USB。
> `SSDT-EHC1.aml`应该是因为 x230 没有把这个 USB 引出来，所以为了省电关闭了。

- 你还想完美一点的 USB 映射（也可以用这个关闭某些 USB 口）这个比较折腾了，有两个工具可以做 USBMap，都在 macOS 里面运行，一个不能用就用另一个。
    + [USBMap](https://github.com/corpnewt/USBMap)
    + [Hackintool](https://github.com/benbaker76/Hackintool)

- [苹果服务和 iMessage](https://dortania.github.io/OpenCore-Post-Install/universal/iservices.html) 看你人品好不好了。

- [显卡驱动调整](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.IntelHD.cn.md)，很多微调，不懂不要调。

- [视频DRM 兼容表 (不支持macOS11+)](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.Chart.md) 与 [DRM 测试](https://dortania.github.io/OpenCore-Post-Install/universal/drm.html)

## 致谢

- [Apple](https://www.apple.com) for macOS.
- [George Kushnir](https://github.com/n4ru/1vyrain) for 1vyrain modified BIOS.
- [Acidanthera](https://github.com/acidanthera) for all the kexts/utilities that they made.
- [Dortania](https://github.com/dortania) for the OpenCore Install Guide.
- [Lương Thế Bình](https://github.com/banhbaoxamlan/X230-Hackintosh) for ThinkPad ACPI Patchs and Configurations.
- [5T33Z0](https://github.com/5T33Z0/Lenovo-T530-Hackintosh-OpenCore) for ThinkPad Configurations
- [黑客小兵](https://github.com/daliansky/OC-little)
- [SukkaW](https://github.com/SukkaW)
- [xjn819](https://github.com/xjn819)
- [国光](https://github.com/sqlsec/Hackintosh)