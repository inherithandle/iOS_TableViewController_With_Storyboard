//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by 최규태 on 11/1/15.
//  Copyright (c) 2015 최규태. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Player.h"

@implementation PlayerDetailsViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init PlayerDetailsViewController");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc PlayerDetailsViewController");
}

- (IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate playerDetailsViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender
{
    Player *player = [[Player alloc] init];
    player.name = self.nameTextField.text;
    player.game = @"Chess";
    player.rating = 1;
    [self.delegate playerDetailsViewController:self didAddPlayer:player];
}

@end