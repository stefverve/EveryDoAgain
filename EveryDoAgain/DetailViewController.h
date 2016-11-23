//
//  DetailViewController.h
//  EveryDoAgain
//
//  Created by Stefan Verveniotis on 2016-11-23.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EveryDoAgain+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

