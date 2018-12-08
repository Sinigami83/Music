//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NPSong : NSObject
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
@end
