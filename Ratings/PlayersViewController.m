//
//  PlayersViewController.m
//  Ratings
//
//  Created by 최규태 on 10/31/15.
//  Copyright (c) 2015 최규태. All rights reserved.
//

#import "PlayersViewController.h"
#import "Player.h"
#import "PlayerCell.h"

@interface PlayersViewController ()

@end

@implementation PlayersViewController


#pragma mark - table view datasource method.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PlayerCell *cell = (PlayerCell *)[tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    Player *player = (self.players)[indexPath.row];
    cell.nameLabel.text = player.name;
    cell.gameLabel.text = player.game;
    cell.ratingImageView.image = [self imageForRating:player.rating];
    
    return cell;
}

- (UIImage *)imageForRating:(int)rating
{
    switch (rating) {
        case 1: return [UIImage imageNamed:@"star"];
        case 2: return [UIImage imageNamed:@"2stars"];
        case 3: return [UIImage imageNamed:@"3stars"];
        case 4: return [UIImage imageNamed:@"4stars"];
        case 5: return [UIImage imageNamed:@"5stars"];
    }
    return nil;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddPlayer"]) {
        
        UINavigationController *navigationController = segue.destinationViewController;
        PlayerDetailsViewController *playerDetailsViewController = [navigationController viewControllers][0];
        playerDetailsViewController.delegate = self;
    }
}

#pragma mark - PlayerDetailsViewControllerDelegate

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller
{
//    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player
{
    [self.players addObject:player];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:([self.players count] - 1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

