//
//  InterfaceController.m
//  09-Alert WatchKit Extension
//
//  Created by xiaomage on 15/10/10.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
- (IBAction)alertShow {
    
    WKAlertAction *a0 = [WKAlertAction actionWithTitle:@"a0T-cancle"
                                                 style:WKAlertActionStyleCancel handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    WKAlertAction *a1 = [WKAlertAction actionWithTitle:@"a1T-def"
                                                 style:WKAlertActionStyleDefault handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    
    WKAlertAction *a2 = [WKAlertAction actionWithTitle:@"a2T-destr"
                                                 style:WKAlertActionStyleDestructive handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    [self presentAlertControllerWithTitle:@"title0"
                                  message:@"xmgALertMessage"
                           preferredStyle:WKAlertControllerStyleAlert
                                  actions:@[a0, a1, a2]];
}

// 它与上面的不同只是取消跑到了上面
- (IBAction)actionSheetShow {
    WKAlertAction *a0 = [WKAlertAction actionWithTitle:@"a0T-cancle"
                                                 style:WKAlertActionStyleCancel handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    WKAlertAction *a1 = [WKAlertAction actionWithTitle:@"a1T-def"
                                                 style:WKAlertActionStyleDefault handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    
    WKAlertAction *a2 = [WKAlertAction actionWithTitle:@"a2T-destr"
                                                 style:WKAlertActionStyleDestructive handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    [self presentAlertControllerWithTitle:@"title0"
                                  message:@"xmgALertMessage"
                           preferredStyle:WKAlertControllerStyleActionSheet
                                  actions:@[a0, a1, a2]];

}

// WKAlertControllerStyleSideBySideButtonsAlert这种样式只允许添加2个action,他们是横排的
- (IBAction)showA3 {
    WKAlertAction *a0 = [WKAlertAction actionWithTitle:@"a0T-cancle"
                                                 style:WKAlertActionStyleCancel handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    WKAlertAction *a1 = [WKAlertAction actionWithTitle:@"a1T-def"
                                                 style:WKAlertActionStyleDefault handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    
    WKAlertAction *a2 = [WKAlertAction actionWithTitle:@"a2T-destr"
                                                 style:WKAlertActionStyleDestructive handler:^{
                                                     NSLog(@"%s, line = %d", __FUNCTION__, __LINE__);
                                                 }];
    [self presentAlertControllerWithTitle:@"title0"
                                  message:@"xmgALertMessage"
                           preferredStyle:WKAlertControllerStyleSideBySideButtonsAlert
                                  actions:@[a0, a2]];
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



