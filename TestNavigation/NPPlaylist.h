//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NPSong.h"

@interface NPPlaylist : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray<NPSong *> *songs;

- (instancetype)initWithName:(NSString *)name
                       songs:(NSArray<NPSong *> *)songs NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
@end
