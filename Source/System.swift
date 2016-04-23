//
//  System.swift
//  QiniuSwift
//
//  Created by bailong on 16/4/23.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

func hasAts()->Bool{
    #if os(iOS)
        let sysVersion = UIDevice.currentDevice().floatValue;
    #else
        let sysVersion = NSProcessInfo.processInfo().operatingSystemVersion;
        if sysVersion.majorVersion<10
            || (sysVersion.majorVersion == 10 && sysVersion.minorVersion < 11) {
            return false;
        }
    #endif
    return true
}

func isDisableAts()->Bool{
    if !hasAts() {
        return true;
    }
    
    // for unit test
    let d = NSBundle.mainBundle().infoDictionary;
    if d == nil || d?.count == 0 {
        return true;
    }
    
    let security = NSBundle.mainBundle().objectForInfoDictionaryKey("NSAppTransportSecurity");
    
    if let securitySetting = security as? [String:AnyObject] {
        let a = securitySetting["NSAllowsArbitraryLoads"];

        if let ats = a as? NSNumber {
            return ats.boolValue;
        }
    }
    return false;
}