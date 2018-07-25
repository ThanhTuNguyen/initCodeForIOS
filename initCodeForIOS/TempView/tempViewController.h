//
//  tempViewController.h
//  initCodeForIOS
//
//  Created by Thanh Tu Nguyen on 7/19/18.
//  Copyright © 2018 Thanh Tu Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MyClassDelegate <NSObject>  //define delegate protocol
- (void) myClassDelegateMethod;  //define delegate method to be implemented within another class
@end //end protocol


@interface tempViewController : UIViewController

@property (nonatomic, copy) void (^complete)(void);

@property (nonatomic, weak) id <MyClassDelegate> delegate;

@end
