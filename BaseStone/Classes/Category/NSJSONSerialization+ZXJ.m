//
//  NSJSONSerialization+ZXJ.m
//  Pods
//
//  Created by ZXJ on 2017/5/8.
//
//

#import "NSJSONSerialization+ZXJ.h"

@implementation NSJSONSerialization (ZXJ)

+ (NSDictionary *)zxj_dataToDictionary:(NSData *)data {
    NSError *error;
    NSDictionary *d = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        NSLog(@"data to dictionary fail!");
        return nil;
    }
    return d;
}

+ (NSString *)zxj_dataToString:(NSData *)data {
    NSError *error;
    NSString *s = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        NSLog(@"data to string fail!");
        return nil;
    }
    return s;
}

+ (NSString *)zxj_dictionaryToString:(NSDictionary *)dictionary {
    NSError *error;
    NSData *d = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"dictionary to string fail!");
        return nil;
    }
    return [[NSString alloc] initWithData:d encoding:NSUTF8StringEncoding];
}

+ (NSData *)zxj_dictionaryToData:(NSDictionary *)dictionary {
    NSError *error;
    NSData *d = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"dictionary to string data!");
        return nil;
    }
    return d;
}

+ (NSDictionary *)zxj_stringToDictionary:(NSString *)string {
    NSError *error;
    NSData *d = [NSJSONSerialization dataWithJSONObject:string options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"data to dictionary fail!");
        return nil;
    }
    return [NSJSONSerialization zxj_dataToDictionary:d];
}

+ (NSData *)zxj_stringToData:(NSString *)string {
    NSError *error;
    NSData *d = [NSJSONSerialization dataWithJSONObject:string options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"data to dictionary fail!");
        return nil;
    }
    return d;
}
@end
