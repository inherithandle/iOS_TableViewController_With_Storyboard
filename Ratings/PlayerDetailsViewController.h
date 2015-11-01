//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by 최규태 on 11/1/15.
//  Copyright (c) 2015 최규태. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@class PlayerDetailsViewController;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;
@end

@interface PlayerDetailsViewController : UITableViewController

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
