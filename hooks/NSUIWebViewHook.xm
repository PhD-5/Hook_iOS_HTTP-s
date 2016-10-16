%hook UIWebView
NSString * hook_uiwebview_url_to = @"https://kyfw.12306.cn/otn/regist/init";
    
- (void)loadRequest:(NSURLRequest *)request
{
    NSURLRequest *hookUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:hook_uiwebview_url_to]];
    NSLog(@"ChangeURL NSUIWebViewHook:orig url:%@",[request URL]);
    %orig(hookUrlRequest);
    %orig;
}

%end