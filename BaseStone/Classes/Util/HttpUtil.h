//
//  HttpUtil.h
//  Pods
//
//  Created by ZXJ on 2017/5/8.
//
//

#import <Foundation/Foundation.h>

@interface HttpUtil : NSObject
+ (void)postWithURL:(NSString *)url args:(NSDictionary *)args callback:(void(^)(NSDictionary *data))callback;
@end
