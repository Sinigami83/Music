//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllPlaylists.h"

@implementation NPAllPlaylists
- (NSArray *)playlists
{
    if (!_playlists) {
        _playlists = @[ @"New playlist", @"playlists" ];
    }
    return _playlists;
}
@end
