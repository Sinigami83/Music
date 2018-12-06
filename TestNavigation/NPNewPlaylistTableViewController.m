//
//  Created by Nodir Latipov on 12/6/18.
//  Copyright © 2018 Latipov Nodir. All rights reserved.
//

#import "NPNewPlaylistTableViewController.h"
#import "NPSong.h"

@interface NPNewPlaylistTableViewController ()
@property (nonatomic, weak) IBOutlet UITextField *namePlaylistTextField;
@property (nonatomic, weak) IBOutlet UITableView *songsTableView;

@property (nonatomic, strong) NSArray<NPSong *> *songs;

@end

@implementation NPNewPlaylistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.songs = @[];
}

#pragma mark - Action

- (IBAction)canselButtom
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButtom:(id)sender
{
    NPPlaylist *playlist = [[NPPlaylist alloc] initWithName:self.namePlaylistTextField.text
                                                      songs:self.songs];
    [self.delegate viewController:self didSavePlaylist:playlist];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

@end
