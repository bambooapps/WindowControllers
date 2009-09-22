//
//  DetailSheetController.m
//  WindowControllers
//
//  Created by Cesar Tardaguila on 03/09/09.
//  www.bambooapps.com
//

#import "DetailSheetController.h"
#import "WindowControllers_AppDelegate.h"

@implementation DetailSheetController ( Private )

- (void)dealloc;
{
	[ appDelegate release ];
	[ super dealloc ];
}

- (void)sheetDidEnd:(NSWindow *)sheetWindow 
		 returnCode:(int)returnCode
		contextInfo:(void  *)contextInfo;
{
	[ sheetWindow orderOut:nil ];
	[ self release ];
}

@end

@implementation DetailSheetController
@synthesize appDelegate;

- (id)initSheetWithAppDelegate: (WindowControllers_AppDelegate *) appDel
{
	if( ![ self initWithWindowNibName: NSStringFromClass( [ self class ] ) ] )
	{
		return nil;
	}
	
	self.appDelegate = appDel;
	
	[ NSApp beginSheet: self.window
		modalForWindow:[ NSApp mainWindow ] modalDelegate: self
		didEndSelector:@selector( sheetDidEnd:returnCode:contextInfo: ) contextInfo: nil ];
	
	[ [ self window ] makeKeyAndOrderFront:nil ];
	
	return self;
}

-(void) awakeFromNib
{
	[ arrayController setSelectedObjects: [ self.appDelegate.dataController selectedObjects] ];	
}

- (IBAction)actionCloseSheet:(id)sender
{
	[ NSApp endSheet:[ self window ] returnCode:0 ];	
	//TODO. Ejecutar la acción deseada
}

- (IBAction)cancelSheet:(id)sender
{
	[ NSApp endSheet:[ self window ] returnCode:0 ];	
}

-( WindowControllers_AppDelegate *) appDelegate
{
	return appDelegate;
}


@end
