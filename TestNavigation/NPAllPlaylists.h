//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NPPlaylist.h"

@interface NPAllPlaylists : NSObject
- (NSArray *)allplaylist;
- (void)addPlaylist:(NPPlaylist *)playlist;
@end
