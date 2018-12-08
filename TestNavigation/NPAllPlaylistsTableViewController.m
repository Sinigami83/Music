
//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllPlaylistsTableViewController.h"
#import "NPAllPlaylists.h"
#import "NPPlaylist.h"
#import "NPNewPlaylistTableViewController.h"

@interface NPAllPlaylistsTableViewController () <NPNewPlaylistTableViewControllerDelegate>
@end

@implementation NPAllPlaylistsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NPAllPlaylists *lists = [[NPAllPlaylists alloc] init];
    //self.playlists = [lists allplaylist];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.playlists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell playlist" forIndexPath:indexPath];
    NPPlaylist *playlist = self.playlists[indexPath.row];
    cell.textLabel.text = [playlist name];
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

#pragma mark - NPNewPlaylistTableViewControllerDelegate
- (void)viewController:(NPNewPlaylistTableViewController *)vc didSavePlaylist:(NPPlaylist *)playlist
{
    NSMutableArray *playlists = [self.playlists mutableCopy];
    [playlists addObject:playlist];
    self.playlists = playlists;

    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"New playlist"]) {
        NPNewPlaylistTableViewController *controller = segue.destinationViewController;
        controller.delegate = self;
    }
}

@end
