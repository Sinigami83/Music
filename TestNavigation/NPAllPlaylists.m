//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllPlaylists.h"
#import "NPSong.h"
#import "NPPlaylist.h"
#import "NPNewPlaylistTableViewController.h"


@interface NPAllPlaylists() <NPNewPlaylistTableViewControllerDelegate>
@property (nonatomic, strong) NSArray<NPPlaylist *> *playlists;
@end

@implementation NPAllPlaylists
- (NSArray<NPPlaylist *> *)playlists
{
    if (!_playlists) {
        _playlists = @[ [[NPPlaylist alloc] initWithName:@"New playlist" songs:nil] ];
    }
    return _playlists;
}

- (NSArray *)allplaylist
{
    return self.playlists;
}

- (void)addPlaylist:(NPPlaylist *)playlist
{
    NSMutableArray *playlists = [self.playlists mutableCopy];
    [playlists addObject:playlist];
    self.playlists = playlists;
}

#pragma mark - NPNewPlaylistTableViewControllerDelegate
- (void)viewController:(NPNewPlaylistTableViewController *)vc didSavePlaylist:(NPPlaylist *)playlist
{
    [self addPlaylist:playlist];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"New playlist"]) {
        NPNewPlaylistTableViewController *controller = segue.destinationViewController;
        controller.delegate = self;
    }
}

@end
