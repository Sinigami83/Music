//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllMusicTableViewController.h"
#import "NPAllMusics.h"
#import "NPSong.h"

@interface NPAllMusicTableViewController ()
@property (nonatomic, strong) NSArray *songs;
@end

@implementation NPAllMusicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NPAllMusics *songs = [[NPAllMusics alloc] init];
    self.songs = [songs allMusics];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.songs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Music" forIndexPath:indexPath];
    NPSong *song = self.songs[indexPath.row];
    cell.textLabel.text = song.name;
    return cell;
}

@end
