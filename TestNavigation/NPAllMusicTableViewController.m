//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPAllMusicTableViewController.h"
#import "NPAllMusic.h"

@interface NPAllMusicTableViewController ()
@property (nonatomic, strong) NSArray *songs;
@end

@implementation NPAllMusicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NPAllMusic *songs = [[NPAllMusic alloc] init];
    self.songs = [songs musics];
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
    cell.textLabel.text = [self.songs objectAtIndex:indexPath.row];
    
    return cell;
}

@end
