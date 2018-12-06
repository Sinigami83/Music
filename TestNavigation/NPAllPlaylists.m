//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllPlaylists.h"
#import "NPSong.h"
#import "NPPlaylist.h"
#import "NPNewPlaylistTableViewController.h"


@interface NPAllPlaylists()
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

@end
