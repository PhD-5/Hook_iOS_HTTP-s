%hook SKUIURL
-(id)initWithURL:(id)url{
    NSLog(@"ChangeURL SKUIURL:orig%@",url);
    return %orig([NSURL URLWithString:@"https://kyfw.12306.cn/otn/leftTicket/init"]);
}
%end