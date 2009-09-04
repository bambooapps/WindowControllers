//
//  WindowControllers_AppDelegate.h
//  WindowControllers
//
//  Created by Cesar Tardaguila on 03/09/09.
//  www.bambooapps.com
//

#import <Cocoa/Cocoa.h>

@interface WindowControllers_AppDelegate : NSObject 
{
    NSWindow *window;
    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;
}

@property (nonatomic, retain) IBOutlet NSWindow *window;

@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:sender;

- (IBAction) openInSheet: sender;

@end
