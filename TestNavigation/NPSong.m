//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPSong.h"

@implementation NPSong
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self != nil) {
        _name = name;
    }
    return self;
}
@end
