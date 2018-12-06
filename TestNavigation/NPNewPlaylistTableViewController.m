//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPNewPlaylistTableViewController.h"

@interface NPNewPlaylistTableViewController ()

@end

@implementation NPNewPlaylistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Action

- (IBAction)canselButtom
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButtom:(id)sender
{

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

@end
