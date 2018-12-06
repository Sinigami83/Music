//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllMusic.h"
@interface NPAllMusic()

@end

@implementation NPAllMusic

-(NSArray *)musics
{
    if (!_musics) {
        _musics = @[ @"song1", @"song2", @"song3", @"song4" ];
    }
    return _musics;
}

@end
