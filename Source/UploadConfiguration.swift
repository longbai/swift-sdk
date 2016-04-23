//
//  UploadConfiguration.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public struct ServiceAddress{
    public let host:String;
    public let hostBackup:String;
    public let ips:[String];
}

public struct UploadConfiguration{
    
    public static func defaultConfiguration()->UploadConfiguration{
        let recorder = FileRecorder()
        let disableATS = isDisableAts()
        return UploadConfiguration(up: zone0, chunkSize: 256*1024, putThreshold: 512*1024, retryMax: 3, timeoutInterval: 30, recorder: recorder, disableATS: disableATS)
    }
    
    /**
     *    默认上传服务器地址
     */
    public var up:ServiceAddress;
    
    /**
     *    断点上传时的分片大小
     */
    public var chunkSize:UInt;
    
    /**
     *    如果大于此值就使用断点上传，否则使用form上传
     */
    public var putThreshold:UInt;
    
    /**
     *    上传失败的重试次数
     */
    public var retryMax:UInt;
    
    /**
     *    超时时间 单位 秒
     */
    public var timeoutInterval:UInt;
    
    public var recorder:Recorder;
    
    public var disableATS:Bool;
    
    public static let zone0 = ServiceAddress(host: "upload.qiniu.com", hostBackup: "up.qiniu.com", ips: ["183.136.139.10", "115.231.182.136"]);
    
    public static let zone1 = ServiceAddress(host: "upload-z1.qiniu.com", hostBackup: "up-z1.qiniu.com", ips: ["106.38.227.28", "106.38.227.27"]);
}
