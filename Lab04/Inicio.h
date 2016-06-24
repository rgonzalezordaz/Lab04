//
//  ViewController.h
//  Lab04
//
//  Created by Ricardo Gonzalez on 19/06/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Globales.h"
#import "Intro.h"


@interface Inicio : UIViewController <UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (nonatomic, strong) UIPageViewController *pageViewController;

@end

