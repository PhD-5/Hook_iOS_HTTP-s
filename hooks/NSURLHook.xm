%hook NSURL

- (id)URLWithString:(NSString *)URLString{
    NSLog(@"ChangeURL NSURLHook:orig url:w%@",URLString);
    //NSString* hookurl = [NSString stringWithFormat:@"https://kyfw.12306.cn/otn/leftTicket/init"];
    return %orig(@"https://kyfw.12306.cn/otn/leftTicket/init");
}
%end
