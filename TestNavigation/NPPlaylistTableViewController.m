//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPPlaylistTableViewController.h"
#import "NPSong.h"


@interface NPPlaylistTableViewController ()
@property (nonatomic, strong) NSArray<NPSong *> *songs;
@end

@implementation NPPlaylistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.songs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Selected playlist" forIndexPath:indexPath];
    NPSong *song = self.songs[indexPath.row];
    cell.textLabel.text = song.name;
    return cell;
}

@end
