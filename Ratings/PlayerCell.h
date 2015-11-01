//
//  PlayerCell.h
//  Ratings
//
//  Created by 최규태 on 10/31/15.
//  Copyright (c) 2015 최규태. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
