//
//  TaskViewCell.h
//  EveryDoAgain
//
//  Created by Stefan Verveniotis on 2016-11-23.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "EveryDoAgain+CoreDataModel.h"

@interface TaskViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *taskNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *taskPriorityLabel;
@property (weak, nonatomic) IBOutlet UIView *taskStrikethrough;

@end
