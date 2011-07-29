//
//  tweetDeckViewController.h
//  tweetDeck
//
//  Created by Aakash Chaudhary on 29/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tweetDeckViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate> {
    IBOutlet UIView * upperView;
    IBOutlet UIScrollView* megaScroll;
    IBOutlet UITableView * table1;
    IBOutlet UITableView * table2;
    IBOutlet UILabel * label;
    IBOutlet UILabel * label1;
    IBOutlet UILabel * label2;
    IBOutlet UILabel * label3;
    IBOutlet UILabel * labelA;
    IBOutlet UILabel * labelB;
    CGPoint initialPosition;
    CGPoint currentPosition;
}
@property(nonatomic,retain) UIView * upperView;
@property(nonatomic,retain) UITableView * table1;
@property(nonatomic,retain) UITableView * table2;
@property(nonatomic,retain) UIScrollView* megaScroll;
@property(nonatomic,retain) UILabel * label;
@property(nonatomic,retain) UILabel * label1;
@property(nonatomic,retain) UILabel * label2;
@property(nonatomic,retain) UILabel * label3;
@property(nonatomic,retain) UILabel * labelA;
@property(nonatomic,retain) UILabel * labelB;
@property(assign) CGPoint initialPosition;
@property(assign) CGPoint currentPosition;

@end
