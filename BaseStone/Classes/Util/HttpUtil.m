//
//  HttpUtil.m
//  Pods
//
//  Created by ZXJ on 2017/5/8.
//
//

#import "HttpUtil.h"
#import "STHTTPRequest.h"
#import "NSJSONSerialization+ZXJ.h"

@implementation HttpUtil
+ (void)postWithURL:(NSString *)url args:(NSDictionary *)args callback:(void(^)(NSDictionary *data))callback {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        STHTTPRequest* rst = [STHTTPRequest requestWithURLString:url];
        rst.timeoutSeconds         = 30;
        rst.forcedResponseEncoding = NSUTF8StringEncoding;
        rst.POSTDataEncoding       = NSUTF8StringEncoding;
        rst.encodePOSTDictionary   = FALSE;
        rst.POSTDictionary = args;
        
        rst.completionDataBlock = ^(NSDictionary *headers, NSData *body) {
            if (callback) {
                NSDictionary *d = [NSJSONSerialization zxj_dataToDictionary:body];
                dispatch_async(dispatch_get_main_queue(), ^{
                    callback(d);
                });
            }
        };
        
        rst.errorBlock=^(NSError *error) {
            if (callback) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSDictionary *d = @{@"code" : @10000};
                    callback(d);
                });
            }
        };
        
        [rst startAsynchronous];
    });
}
@end
