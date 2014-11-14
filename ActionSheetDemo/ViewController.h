//
//  ViewController.h
//  ActionSheetDemo
//
//  Created by Anthony Dagati on 11/14/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)showNormalActionSheet:(id)sender;
- (IBAction)showDeleteConfirmation:(id)sender;
- (IBAction)showColorsActionSheet:(id)sender;

@end

