//
//  WhereToBuyViewController.m
//  Gift4
//
//  Created by Rafael Juzo G Oda on 3/31/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

#import "WhereToBuyViewController.h"
#import "Constants.h"

@interface WhereToBuyViewController()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation WhereToBuyViewController


#pragma mark - Life Cycle

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set a annotation in the Map.
    Gift4Annotation * annotation = [[Gift4Annotation alloc] initWithCoordinate:CLLocationCoordinate2DMake(kLatitude, kLongitude)];
    [self.mapView addAnnotation:annotation];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self zoomMapToLocation];
}


#pragma mark - Custom Functionalities

-(void)zoomMapToLocation
{
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(kLatitude, kLongitude), 500, 500);
    MKCoordinateRegion adjustedRegion = [self.mapView regionThatFits:viewRegion];
    [self.mapView setRegion:adjustedRegion animated:YES];
    self.mapView.showsUserLocation = YES;
}

#pragma mark - Actions From Buttons

- (IBAction)callStore:(id)sender
{
    
}


- (IBAction)directionsToStore:(id)sender
{
    UIActionSheet *directionOptions = [[UIActionSheet alloc] initWithTitle:@"Direções"
                                                                  delegate:self
                                                         cancelButtonTitle:@"Cancelar"
                                                    destructiveButtonTitle:nil
                                                         otherButtonTitles:@"Waze", @"Google Maps", @"Maps", nil];
    [directionOptions showInView:self.view];
}

#pragma mark - Directions from sources

-(void)directionFromWaze
{
    
}

-(void)directionFromGoogleMaps
{
    
}

-(void)directionFromAppleMaps
{
    
}

#pragma mark - Action Sheet Delegate

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *wazeAppURL = @"waze://";
    NSString *mapsAppURL = @"maps://";
    
    BOOL canOpenURL = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:wazeAppURL]];
    
    NSString *url = canOpenURL ? wazeAppURL : mapsAppURL;
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

@end

@implementation Gift4Annotation

@synthesize coordinate=_coordinate;

-(id)initWithCoordinate:(CLLocationCoordinate2D)coord
{
    
    self = [super init];
    
    _coordinate = coord;
    return self;
}

@end