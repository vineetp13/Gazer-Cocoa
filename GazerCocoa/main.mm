//
//  main.m
//  og3
//
//  Created by Ryan Kabir on 11/22/11.
//  Copyright (c) 2011 Lab Cogs Co. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CoreFoundation/CoreFoundation.h"

int main(int argc, char *argv[])
{
    return NSApplicationMain(argc, (const char **)argv);
}

//
//int main(int argc, char **argv) {
//
//    [NSApplication sharedApplication];
//    //Can't run this just yet
//    //    [NSApp run];
//    LCCalibrationWindowController *win = [[LCCalibrationWindowController alloc] initWithWindowNibName:@"CalibrationWindow"];
//
//    // set the right path so the classifiers can find their data
//    CFBundleRef mainBundle = CFBundleGetMainBundle();
//    CFURLRef resourcesURL = CFBundleCopyResourcesDirectoryURL(mainBundle);
//    char path[PATH_MAX];
//    if (!CFURLGetFileSystemRepresentation(resourcesURL, TRUE, (UInt8 *)path, PATH_MAX))
//    {
//        // error!
//    }
//    CFRelease(resourcesURL);
//    chdir(path);
//    // end path settings
//
//    [win awakeFromNib];
//    g = new ogc::ogc(argc, argv, win.hostView);
//    g->loadClassifiers();
//
//    MainGazeTracker *gazeTracker = g->gazeTracker;
////    new MainGazeTracker(argc, argv, getStores(win.hostView), win.hostView);
//
//    win.pv = [NSValue valueWithPointer:g];
//
//    cvNamedWindow(MAIN_WINDOW_NAME, CV_GUI_EXPANDED);
//    cvResizeWindow(MAIN_WINDOW_NAME, 640, 480);
//
//    //    createButtons();
//    g->registerMouseCallbacks();
//
//    gazeTracker->doprocessing();
//    g->drawFrame();
//
////    findEyes();
////    YourAppDelegate *appDelegate = (YourAppDelegate *)[[UIApplication sharedApplication] delegate];
////    app.delegate.calibrationFlag = NO;
//    
//    // to declare an object Object* blah = &gazeTracker
//    
//    GlobalManager *gm = [GlobalManager sharedGlobalManager];
//    gm.calibrationFlag = NO;
//    
//    while(1) {
//        gazeTracker->doprocessing();
//
//        g->drawFrame();
//        if (gm.calibrationFlag) {
//            gazeTracker->startCalibration();
//            gm.calibrationFlag = NO;
//        }
//        char c = cvWaitKey(33);
//        switch(c) {
//            case 'c':
//                gazeTracker->startCalibration();
//                break;
//            case 't':
//                gazeTracker->startTesting();
//                break;
//            case 's':
//                gazeTracker->savepoints();
//                break;
//            case 'l':
//                gazeTracker->loadpoints();
//                break;
//            case 'x':
//                gazeTracker->clearpoints();
//                break;
//            case 'r':
//                g->findEyes();
//                break;
//            default:
//                break;
//        }
//
//        if(c == 27) break;
//    }
//
////    //cvDestroyWindow(MAIN_WINDOW_NAME);
//    delete gazeTracker;
//    return 0;
//}