//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- ( NSString * )stringWithDeliLine:(NSArray *)deliLine {
    
    NSMutableString *stringWithDeliLine= [ @"" mutableCopy];
    
    if ([ deliLine count ] == 0) {
        [ stringWithDeliLine appendFormat:@"The line is currently empty." ];
        NSLog(@"%@", stringWithDeliLine);
    }
    else {
            [ stringWithDeliLine appendFormat:@"The line is:" ];
        for ( NSUInteger i = 0; i < [ deliLine count ]; i++ ) {
            NSUInteger spot = i + 1;
            [ stringWithDeliLine appendFormat:@"\n%lu. %@", spot, deliLine[i] ];
        }
        NSLog(@"%@", stringWithDeliLine);
    }
    return stringWithDeliLine;
    
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [ deliLine addObject:name ];
    
}

- (NSString * )serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *nowServing = @"";
    if ([ deliLine count ] > 0) {
        nowServing = deliLine[0];
        [ deliLine removeObjectAtIndex:0 ];
    }
    return nowServing;
    return deliLine;
}

@end
