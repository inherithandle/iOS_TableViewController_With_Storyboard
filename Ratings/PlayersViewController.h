//
//  PlayerViewController.h
//  Ratings
//
//  Created by 최규태 on 10/31/15.
//  Copyright (c) 2015 최규태. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end
