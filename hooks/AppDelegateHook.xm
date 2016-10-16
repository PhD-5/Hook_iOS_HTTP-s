#import "CustomURLProtocol.h"
%hook AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //注册protocol
    [NSURLProtocol registerClass:[CustomURLProtocol class]];
    return YES;
}
%end