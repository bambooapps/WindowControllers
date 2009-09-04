//
//  DetailSheetController.h
//  WindowControllers
//
//  Created by Cesar Tardaguila on 03/09/09.
//  www.bambooapps.com
//

#import <Cocoa/Cocoa.h>
@class WindowControllers_AppDelegate;

@interface DetailSheetController : NSWindowController 
{
	WindowControllers_AppDelegate *appDelegate;
	
	IBOutlet NSArrayController *controller;
}

@property (retain) WindowControllers_AppDelegate *appDelegate;

- (id)initSheetWithAppDelegate: (WindowControllers_AppDelegate *) appDel;
- (IBAction)actionCloseSheet:(id)sender;
- (IBAction)cancelSheet:(id)sender;

@end
