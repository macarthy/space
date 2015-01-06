//
//  OWOutetSpaceTableViewController.m
//  Out of this world
//
//  Created by macarthy on 1/5/15.
//  Copyright (c) 2015 Justin. All rights reserved.
//

#import "OWOutetSpaceTableViewController.h"
#import "AstronomicalData.h"

@interface OWOutetSpaceTableViewController ()

@end

@implementation OWOutetSpaceTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.planets = [AstronomicalData allKnownPlanets];
//    self.planets = [[NSMutableArray alloc] init ];
//    NSString *p1 = @"Mercury";
//    NSString *p2 = @"Venus";
//    NSString *p3 = @"Earth";
//    NSString *p4 = @"Mars";
//    NSString *p5 = @"Jupiter";
//    NSString *p6 = @"Saturn";
//    NSString *p7 = @"Uranus";
//    NSString *p8 = @"Neptune";
//    
//    
//    [self.planets addObject: p1];
//    [self.planets addObject: p2];
//        [self.planets addObject: p3];
//        [self.planets addObject: p4];
//        [self.planets addObject: p5];
//        [self.planets addObject: p6];
//        [self.planets addObject: p7];
//        [self.planets addObject: p8];
    
    
    
//    NSMutableDictionary *mydict = [[NSMutableDictionary alloc]init];
//    NSString *color1 = @"red";
//    [mydict setObject:color1 forKey:@"Apple"];
//    [mydict setObject:@"blue" forKey:@"sea"];
//    [mydict setObject:@"yellow" forKey:@"star"];
//    NSLog(@"%@",mydict);
//
//    NSString *r = [mydict objectForKey:@"sea"];
//    NSLog(@"%@",r);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.planets.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    
//     NSMutableArray *data = [[NSMutableArray alloc] initWithArray:]
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell" forIndexPath:indexPath];
    
    if (indexPath.row == 0){
        cell.backgroundColor = [UIColor redColor];
    }
    else{
        cell.backgroundColor = [UIColor blueColor];
    }
    
    // Configure the cell...
    NSDictionary *currentPlanet = [self.planets objectAtIndex:indexPath.row];
    cell.textLabel.text =
        [currentPlanet objectForKey:PLANET_INTERESTING_FACT  ];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
