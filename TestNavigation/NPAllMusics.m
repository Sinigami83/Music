//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllMusics.h"
#import "NPSong.h"


@interface NPAllMusics()
@property (nonatomic, strong) NSArray *musics;
@end


@implementation NPAllMusics

- (NSArray *)musics
{
    if (!_musics) {
        _musics = @[ [[NPSong alloc] initWithName:@"song1"],
                     [[NPSong alloc] initWithName:@"song2"],
                     [[NPSong alloc] initWithName:@"song3"],
                     [[NPSong alloc] initWithName:@"song4"],
                     [[NPSong alloc] initWithName:@"song5"]
                    ];
    }
    return _musics;
}

- (NSArray *)allMusics
{
    return self.musics;
}

@end
