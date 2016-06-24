//
//  Intro.m
//  Lab04
//
//  Created by Ricardo Gonzalez on 20/06/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import "Intro.h"

@implementation Intro
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.iPageIndex];
    self.imgIntro.image = [UIImage imageNamed:maIntroImages[self.iPageIndex]];
    
    if (self.iPageIndex == 2){
        self.siguienteBtn.hidden = NO;
    }
}
/**********************************************************************************************/
#pragma mark - Actions methods
/**********************************************************************************************/
- (IBAction)siguienteBtnPressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
