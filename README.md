# EMAS

解决EMAS在引入了IMS的情况下，TBJSONModel和AKTBJSONModel冲突的问题

Podfile分别引入的SDK的为AlicloudCrash、AlicloudAPM、AlicloudTLog，再三个库都依赖了TBJSONModel.framework二进制资源包。

但是IMS物联网库，IMSThingCapability和IMSDeviceCenter依赖的AKTBJSONModel其实就是TBJSONModel

导致编译报错：target has frameworks with conflicing names: tbjsonmodel.framework

# 文件中依赖的EMAS实际版本

- AliHACore (10.0.3.6):
    - AliHALogEngine (>= 10.0.2)
    - AliHAProtocol (>= 10.0.2.1)
    - TBJSONModel
    - TBRest (>= 1.0.0.18)


- AliHAProtocol (10.0.3):
    - TBJSONModel


- RemoteDebugChannel (10.0.4.5):
    - AliHAProtocol (>= 10.0.0.3)
    - AliHASecurity
    - AliyunOSSiOS
    - TBJSONModel
    - TBRest (>= 1.0.0.18)
    - ZipArchive

- TRemoteDebugger (10.0.6.6):
    - AliHALogEngine (>= 10.0.6)
    - AliHAMethodTrace (>= 1.0.1.2)
    - AliHAProtocol (>= 10.0.0.5)
    - AliHASecurity (>= 10.0.4)
    - AliRemoteDebugInterface (>= 0.0.1.2)
    - TBJSONModel
    - TBRest (>= 1.0.0.18)


- TBJSONModel (0.1.15.1)


# 更新EMAS库

涉及到更新EMAS的库的话，请从.cocoapod的spec中找到对应版本的podspec文件中的.source指向的二进制资源，下载下来进行文件替换更新


