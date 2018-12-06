//
//  Created by Nodir Latipov on 12/5/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPMediaViewController.h"
#import "NPAllMusicTableViewController.h"

@interface NPMediaViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *mediaLibrary;
@end

@implementation NPMediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mediaLibrary = @[ @"Songs", @"Playlists" ];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.mediaLibrary.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = self.mediaLibrary[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *segue = [self.mediaLibrary objectAtIndex:indexPath.row];
    if ([segue isEqualToString:@"Songs"]) {
        [self performSegueWithIdentifier:@"Songs" sender:nil];
    } else if ([segue isEqualToString:@"Playlists"]) {
        [self performSegueWithIdentifier:@"Playlists" sender:nil];
    }
}

@end
