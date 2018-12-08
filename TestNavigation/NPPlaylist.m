//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPPlaylist.h"

@implementation NPPlaylist
- (instancetype)initWithName:(NSString *)name
                       songs:(NSArray<NPSong *> *)songs
{
    self = [super init];
    if (self != nil) {
        _name = name;
        _songs = songs;
    }
    return self;
}
@end
