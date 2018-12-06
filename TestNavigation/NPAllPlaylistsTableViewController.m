
//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllPlaylistsTableViewController.h"
#import "NPAllPlaylists.h"

@interface NPAllPlaylistsTableViewController ()
@property (nonatomic, strong) NSArray *playlists;
@end

@implementation NPAllPlaylistsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NPAllPlaylists *lists = [[NPAllPlaylists alloc] init];
    self.playlists = [lists playlists];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.playlists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell playlist" forIndexPath:indexPath];
    cell.textLabel.text = self.playlists[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [self performSegueWithIdentifier:@"New playlist" sender:nil];
    } else {
        [self performSegueWithIdentifier:@"Selected playlist" sender:nil];
    }
}

@end
