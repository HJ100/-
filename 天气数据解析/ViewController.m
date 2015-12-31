//
//  ViewController.m
//  天气数据解析
//
//  Created by huang on 15/12/30.
//  Copyright © 2015年 huang. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //NSURL *url = [NSURL URLWithString:@"http://zhwnlapi.etouch.cn/Ecalender/api/v2/weather?app_key=99817882&citykey=101240704&date=20151230"];
    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
//    
//    [manager GET:@"http://zhwnlapi.etouch.cn/Ecalender/api/v2/weather?app_key=99817882&citykey=101240704&date=20151230" parameters:nil progress:^(NSProgress * downloadProgress) {
//        return nil;
//    } success:^(NSURLSessionDataTask *  task, id  responseObject) {
//         return nil;
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//         return nil;
//    }];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
//    
      manager.responseSerializer = [AFJSONResponseSerializer serializer];
//    
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    
    NSString *url = @"http://zhwnlapi.etouch.cn/Ecalender/api/v2/weather?app_key=99817882&citykey=101240704&date=20151230";
    
   // manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    
    
    
    [manager GET:url  parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON =====%@",responseObject);
        NSLog(@"JSON =====%@",responseObject);
        NSLog(@"JSON =====%@",responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error == ===%@",error);
    }];
    
    
}

-(void)lili
{
    NSLog(@"nihao");
}
-(void)ddd
{
    NSLog(@"dfdf");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
