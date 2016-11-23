//
//  AppDelegate.h
//  EveryDoAgain
//
//  Created by Stefan Verveniotis on 2016-11-23.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

