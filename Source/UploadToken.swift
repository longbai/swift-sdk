//
//  UploadToken.swift
//  QiniuSwift
//
//  Created by bailong on 16/3/11.
//  Copyright © 2016年 Qiniu Cloud Storage. All rights reserved.
//

import Foundation

public class UploadToken{
    public let accessKey:String;
    public let bucket:String;
    public let token:String;
    
    private init(ak:String, bucket:String, token:String){
        self.accessKey = ak;
        self.bucket = bucket;
        self.token = token;
    }
    
//    public static func parse(token:String) ->UploadToken?{
//        let strings = token.componentsSeparatedByString(":");
//        if (strings.count != 3){
//            return nil;
//        }
//        let data = Base64.urlSafeDecode(strings[2]);
//        NSJSONSerialization.scriptingProperties()
//        let dict  = NSJSONSerialization.JSONObjectWithData(data, options: JSONReadingMutableLeaves);
//       
//    }

//    
//    - (NSString *) getAccess {
//    
//    NSRange range = [_token rangeOfString:@":" options:NSCaseInsensitiveSearch];
//    return [_token substringToIndex:range.location];
//    }
//    
//    - (NSString *) getBucket:(NSDictionary *)info {
//    
//    NSString *scope = [info objectForKey:@"scope"];
//    if (!scope) {
//    return @"";
//    }
//    
//    NSRange range = [scope rangeOfString:@":"];
//    if (range.location == NSNotFound) {
//    return scope;
//    }
//    return [scope substringToIndex:range.location];
//    }
//    
//    
//    + (instancetype)parse:(NSString *)token {
//    if (token == nil) {
//    return nil;
//    }
//    NSArray *array = [token componentsSeparatedByString:@":"];
//    if (array == nil || array.count != 3) {
//    return nil;
//    }
//    
//    NSData *data = [QNUrlSafeBase64 decodeString:array[2]];
//    NSError *tmp = nil;
//    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&tmp];
//    if (tmp != nil || dict[@"scope"] == nil || dict[@"deadline"] == nil) {
//    return nil;
//    }
//    return [[QNUpToken alloc] init:dict token:token];
//    }
}