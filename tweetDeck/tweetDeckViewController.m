//
//  tweetDeckViewController.m
//  tweetDeck
//
//  Created by Aakash Chaudhary on 29/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "tweetDeckViewController.h"

@implementation tweetDeckViewController

@synthesize megaScroll,upperView,followView;
@synthesize label,label1,label2,label3,labelA,labelB,labelT;
@synthesize table1,table2;
@synthesize initialPosition,currentPosition;

#define upperViewHeight 90
#define megaViewHeight 350
#define labelHeight 20

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark -Table View methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{  
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *SimpleTableIdentifier = [NSString stringWithFormat:@"SimpleTableIdentifier%d", indexPath.row];
    UITableViewCell *cell= (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    if(cell==nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: SimpleTableIdentifier] autorelease];
    }
    switch ((indexPath.row)%5) {
        case (0):
            cell.textLabel.text= @"News";
            break;
        case (1):
            cell.textLabel.text= @"Sports";
            break;
        case (2):
            cell.textLabel.text= @"Weather";
            break;
        case (3):
            cell.textLabel.text= @"Channel";
            break;
        case (4):
            cell.textLabel.text= @"Entertainment";
            break;
        default:
            break;
    }
    return  cell;
}

#pragma mark - scroll view method

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    currentPosition = megaScroll.contentOffset;
    upperView.frame = CGRectMake(0, (0 - currentPosition.x)*upperViewHeight/320, 320, upperViewHeight);
    if(currentPosition.x<320){
        megaScroll.frame = CGRectMake(0,(320 - currentPosition.x)*(upperViewHeight)/320 + labelHeight, 320, megaViewHeight + labelHeight + currentPosition.x*upperViewHeight/320);
        label.frame = CGRectMake(0, (320 - currentPosition.x)*(upperViewHeight)/320, 960, labelHeight);
        label1.frame = CGRectMake(80 - currentPosition.x/2, (320 - currentPosition.x)*(upperViewHeight)/320, 160, labelHeight);
        label2.frame = CGRectMake(240 - currentPosition.x/2, (320 - currentPosition.x)*(upperViewHeight)/320, 160, labelHeight);
        label3.frame = CGRectMake(400 - currentPosition.x/2, (320 - currentPosition.x)*(upperViewHeight)/320, 160, labelHeight);
        labelA.frame = CGRectMake(0, (320 - currentPosition.x)*(upperViewHeight)/320, 80, labelHeight);
        labelB.frame = CGRectMake(240, (320 - currentPosition.x)*(upperViewHeight)/320, 80, labelHeight);
        
    }
    else{
        megaScroll.frame = CGRectMake(0,labelHeight, 320, 440);
        label.frame = CGRectMake(0, 0, 960, labelHeight);
        label1.frame = CGRectMake(80 - currentPosition.x/2, 0, 160, labelHeight);
        label2.frame = CGRectMake(240 - currentPosition.x/2, 0, 160, labelHeight);
        label3.frame = CGRectMake(400 - currentPosition.x/2, 0, 160, labelHeight);
        labelA.frame = CGRectMake(0, 0, 80, labelHeight);
        labelB.frame = CGRectMake(240, 0, 80, labelHeight);
    }
}


#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [megaScroll setContentSize:CGSizeMake(960, megaViewHeight)];
    table1.frame = CGRectMake(320, 0, 320, megaViewHeight);
    table2.frame = CGRectMake(640, 0, 320, megaViewHeight);
    [followView setContentSize:CGSizeMake(281, 31)];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}

@end
