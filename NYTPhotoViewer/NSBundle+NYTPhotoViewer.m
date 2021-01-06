//
//  NSBundle+NYTPhotoViewer.m
//  NYTPhotoViewer
//
//  Created by Chris Dzombak on 10/16/15.
//
//

#import "NSBundle+NYTPhotoViewer.h"
#import "NYTPhotosViewController.h"

@implementation NSBundle (NYTPhotoViewer)

+ (instancetype)nyt_photoViewerResourceBundle {
    static NSBundle *resourceBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
#ifdef SWIFTPM_MODULE_BUNDLE
        resourceBundle = SWIFTPM_MODULE_BUNDLE;
#else
        NSString *resourceBundlePath = [[NSBundle bundleForClass:[NYTPhotosViewController class]] pathForResource:@"NYTPhotoViewer" ofType:@"bundle"];
        resourceBundle = [self bundleWithPath:resourceBundlePath];
#endif
    });
    return resourceBundle;
}

@end
