//
//  ViewController.m
//  Tables
//
//  Created by Robert St. John on 8/24/14.
//  Copyright (c) 2014 BIT Systems. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _flowers = [[NSMutableArray alloc] initWithObjects:@"Daliah", @"Lily", @"Rose", @"Petunia", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInTableView: (UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_flowers count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* CellIdentifier = @"theCell";
    UITableViewCell* theCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (theCell == nil)
    {
        theCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    theCell.textLabel.text = [_flowers objectAtIndex:indexPath.row];
    return theCell;
}

@end
