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
	[ self autorelease ];
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
	
	appDelegate = [ appDel retain ];
	
	[ NSApp beginSheet: self.window
		modalForWindow:[ NSApp mainWindow ] modalDelegate: self
		didEndSelector:@selector( sheetDidEnd:returnCode:contextInfo: ) contextInfo: nil ];
	
	[ [ self window ] makeKeyAndOrderFront:nil ];
	
	return self;
}

- (IBAction)actionCloseSheet:(id)sender
{
	NSLog( @"actionCloseSheet" );
	[ NSApp endSheet:[ self window ] returnCode:0 ];
	//TODO. Ejecutar la acción deseada
}

- (IBAction)cancelSheet:(id)sender
{
	NSLog( @"cancelSheet" );
	[ NSApp endSheet:[ self window ] returnCode:0 ];	
}


@end
