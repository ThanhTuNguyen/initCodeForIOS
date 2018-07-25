//
//  FlashViewController.m
//  initCodeForIOS
//
//  Created by Thanh Tu Nguyen on 5/9/18.
//  Copyright © 2018 Thanh Tu Nguyen. All rights reserved.
//

#import "FlashViewController.h"

@interface FlashViewController ()

@end

@implementation FlashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    NSString* token = @"36fefdae1502d70b5f75d0c10bb87be7f1b7f9c7";
    
    
    
    NSURL *URL = [NSURL URLWithString:@"http://35.201.17.234/api/v2/courses/"];
    AFHTTPSessionManager *manager   = [AFHTTPSessionManager manager];
    manager.requestSerializer.allowsCellularAccess = YES;
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager.requestSerializer setValue:@"Token 36fefdae1502d70b5f75d0c10bb87be7f1b7f9c7" forHTTPHeaderField:@"Authorization"];
    [manager    GET:URL.absoluteString
         parameters:nil
           progress:nil
            success:^(NSURLSessionTask *task, id responseObject) {
                NSDictionary *jsonDict = (NSDictionary *) responseObject;

                NSArray *bannerList = [jsonDict objectForKey:@"results"];
                
                if ([responseObject isKindOfClass:[NSArray class]]) {
                    NSArray *responseArray = responseObject;
                    /* do something with responseArray */
                } else if ([responseObject isKindOfClass:[NSDictionary class]]) {
                    NSDictionary *responseDict = responseObject;
                    /* do something with responseDict */
                }
                NSLog(@"JSON: %@", responseObject);
            }
            failure:^(NSURLSessionTask *operation, NSError *error) {
                NSLog(@"Error: %@", error);
            }
     ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Click:(id)sender {
    
    __strong tempViewController *view = [[tempViewController alloc] initWithNibName:@"tempViewController" bundle:nil];
    view.hidesBottomBarWhenPushed = YES;
    view.delegate = self;
//    view.complete = ^{
//        NSLog(@"dasdasdas");
//    };
    [self.navigationController pushViewController:view animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)myClassDelegateMethod {
        NSLog(@"ahhahahahahh");
}


@end
