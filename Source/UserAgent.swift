//
//  UserAgent.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public class UserAgent{
    
    private static func _clientId() ->String{
    #if os(iOS)
        let s = UIDevice.currentDevice().identifierForVendor().UUIDString()
        return s;
    #else
        let t = UInt64(NSDate().timeIntervalSince1970*1000);
        let r = arc4random();
        return String(format: "%lld%u", t, r);
    #endif
    }
    
    public static let clientId = UserAgent._clientId();
    
    public static func description() ->String{
    #if os(iOS)
        return String(format: "QiniuSwift/%@ (%@; iOS %@; %@)", 7.0, UIDevice.currentDevice().model, UIDevice.currentDevice().systemVersion, UserAgent.clientId);
    #else
        return String(format: "QiniuSwift/%@ (Mac OS X %@; %@)", 7.0, NSProcessInfo.processInfo().operatingSystemVersionString, UserAgent.clientId);
    #endif
    }
}
