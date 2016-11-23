//
//  DetailViewController.m
//  EveryDoAgain
//
//  Created by Stefan Verveniotis on 2016-11-23.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *taskNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskDetailsLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskPriorityLabel;
@property (weak, nonatomic) IBOutlet UISwitch *taskCompleteUISwitch;

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.taskNameLabel.text = self.detailItem.task;
        self.taskDetailsLabel.text = self.detailItem.taskDetails;
        self.taskPriorityLabel.text = [NSString stringWithFormat:@"Priority: %@", self.detailItem.priority];
        self.taskCompleteUISwitch.on = self.detailItem.complete;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)taskCompleteUISwitchSwitched:(UISwitch *)sender {
    NSManagedObjectContext *context = self.detailItem.managedObjectContext;
    if (self.detailItem) {
        self.detailItem.complete = self.taskCompleteUISwitch.isOn;
    }
    NSError *error = nil;
    if (![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDo *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
