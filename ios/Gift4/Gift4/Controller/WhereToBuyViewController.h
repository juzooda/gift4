//
//  WhereToBuyViewController.h
//  Gift4
//
//  Created by Rafael Juzo G Oda on 3/31/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class Gift4Annotation;

@interface WhereToBuyViewController : UIViewController <UIActionSheetDelegate>

@end

@interface Gift4Annotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (id) initWithCoordinate:(CLLocationCoordinate2D)coord;

@end
