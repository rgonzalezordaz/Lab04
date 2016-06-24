//
//  Home.h
//  Lab04
//
//  Created by Ricardo Gonzalez on 21/06/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellCaballeros.h"

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tblCaballeros;
@property (strong, nonatomic) IBOutlet UILabel *lblSelected;

@end
