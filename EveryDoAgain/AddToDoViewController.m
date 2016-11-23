//
//  AddToDoViewController.m
//  EveryDoAgain
//
//  Created by Stefan Verveniotis on 2016-11-23.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "AddToDoViewController.h"
#import "EveryDoAgain+CoreDataModel.h"
#import "AppDelegate.h"

@interface AddToDoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *taskNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *taskDetailsTextField;
@property (weak, nonatomic) IBOutlet UITextField *taskPriorityTextField;
@property (weak, nonatomic) IBOutlet UIButton *addTaskButton;


@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTaskButtonPressed:(UIButton *)sender {
    NSManagedObjectContext *context = ((AppDelegate*)[UIApplication sharedApplication].delegate).persistentContainer.viewContext;
    ToDo *newToDo = [[ToDo alloc] initWithContext:context];
    
    // If appropriate, configure the new managed object.
    newToDo.task = self.taskNameTextField.text;
    newToDo.taskDetails = self.taskDetailsTextField.text;
    newToDo.priority = self.taskPriorityTextField.text;
    newToDo.complete = NO;
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
    [self.navigationController popViewControllerAnimated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
