//
//  NSJSONSerialization+ZXJ.h
//  Pods
//
//  Created by ZXJ on 2017/5/8.
//
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (ZXJ)

+ (NSDictionary *)zxj_dataToDictionary:(NSData *)data;
+ (NSString *)zxj_dataToString:(NSData *)data;

+ (NSString *)zxj_dictionaryToString:(NSDictionary *)dictionary;
+ (NSData *)zxj_dictionaryToData:(NSDictionary *)dictionary;

+ (NSDictionary *)zxj_stringToDictionary:(NSString *)string;
+ (NSData *)zxj_stringToData:(NSString *)string;

@end
