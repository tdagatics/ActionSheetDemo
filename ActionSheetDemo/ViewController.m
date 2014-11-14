//
//  ViewController.m
//  ActionSheetDemo
//
//  Created by Anthony Dagati on 11/14/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showNormalActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"What do you want to do with the file?" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"Copy", @"Move", @"Duplicate", nil];
    [actionSheet showInView:self.view];
    actionSheet.tag = 100;
}

- (IBAction)showDeleteConfirmation:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Really delete the selected contact?" delegate:self cancelButtonTitle:@"No, I changed my mind" destructiveButtonTitle:@"Yes, delete it" otherButtonTitles:nil];
    [actionSheet showInView:self.view];
    actionSheet.tag = 200;
                                  
}

- (IBAction)showColorsActionSheet:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Pick a color!" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"Red", @"Orange", @"Yellow", @"Green", @"Blue", @"Indigo", @"Violet", nil];
    [actionSheet showInView:self.view];
    actionSheet.tag = 300;
}

#pragma mark - ActionSheet Delegate Methods

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (actionSheet.tag == 100) {
        NSLog(@"The normal action sheet.");
    } else if (actionSheet.tag == 200) {
            NSLog(@"The delete action sheet.");
        } else
        {
            NSLog(@"The colors aciton sheet.");
    }
    NSLog(@"Index = %d - Title = %@", buttonIndex, [actionSheet buttonTitleAtIndex:buttonIndex]);
}

@end
