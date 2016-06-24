//
//  Intro.h
//  Lab04
//
//  Created by Ricardo Gonzalez on 20/06/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Globales.h"
#import "Home.h"

@interface Intro : UIViewController
@property NSUInteger iPageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lblIntro;
@property (strong, nonatomic) IBOutlet UIImageView *imgIntro;
@property (strong, nonatomic) IBOutlet UIButton *siguienteBtn;
- (IBAction)siguienteBtnPressed:(id)sender;

@end
