//
//  AppDelegate.h
//  initCodeForIOS
//
//  Created by Thanh Tu Nguyen on 5/9/18.
//  Copyright © 2018 Thanh Tu Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "FlashViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

