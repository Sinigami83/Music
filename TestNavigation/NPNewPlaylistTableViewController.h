//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NPPlaylist.h"

@class NPNewPlaylistTableViewController;


@protocol NPNewPlaylistTableViewControllerDelegate
- (void)viewController:(NPNewPlaylistTableViewController *)vc didSavePlaylist:(NPPlaylist *)playlist;
@end

@interface NPNewPlaylistTableViewController : UIViewController
@property (nonatomic, strong) NPPlaylist *myPlaylist;
@property (nonatomic, weak) id <NPNewPlaylistTableViewControllerDelegate> delegate;
@end
