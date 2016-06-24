//
//  Home.m
//  Lab04
//
//  Created by Ricardo Gonzalez on 21/06/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *caballerosNames;
@property NSMutableArray *caballerosImgs;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//--------------------------------------------------------------------------------
- (void)initController {
    self.caballerosNames   = [[NSMutableArray alloc] initWithObjects: @"Aries", @"Tauro", @"Geminis", @"Cancer", @"Leo", @"Virgo", @"Libra", @"Escorpio", @"Capricornio", @"Acuario", @"Picis", @"Seiya", @"Shyru", @"Ikki", @"Hyoga", @"Andromeda", nil];
    
    self.caballerosImgs   = [[NSMutableArray alloc] initWithObjects: @"Aries.png", @"Tauro.png", @"Geminis.png", @"Cancer.png", @"Leo.png", @"Virgo.png", @"Libra.png", @"Escorpio.png", @"Capricornio.png", @"Acuario.png", @"Picis.png", @"Seiya.png", @"Shyru.png", @"Fenix.png", @"Yioga.png", @"Andromeda.png", nil];
    self.lblSelected.text = @"Selecciona un caballero";
}
/**********************************************************************************************/
#pragma mark - Table methods
/**********************************************************************************************/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.caballerosNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellCaballeros *cell = (cellCaballeros *)[tableView dequeueReusableCellWithIdentifier:@"cellCaballeros"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellCaballeros" bundle:nil] forCellReuseIdentifier:@"cellCaballeros"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellCaballeros"];
    }
    //Fill cell with info from arrays
    cell.lblCaballeros.text       = self.caballerosNames[indexPath.row];
    cell.imgCaballeros.image   = [UIImage imageNamed:self.caballerosImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.lblSelected.text = self.caballerosNames[indexPath.row];
}

@end
