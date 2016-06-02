//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    
    NSMutableString *dwarfRollCall = [[NSMutableString alloc] init];
    NSString *dwarf = @"";
    
    for(NSUInteger i = 0; i < [dwarfs count]; i++){
        if(i == [dwarfs count] -1){
            dwarf = [NSString stringWithFormat:@"%lu. %@", i+1, dwarfs[i]];
        }
        else{
            dwarf = [NSString stringWithFormat:@"%lu. %@ | ", i+1, dwarfs[i]];
        }
        [dwarfRollCall appendFormat:@"%@", dwarf];
    }
    
    return dwarfRollCall;
}



-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *powerShout = [[NSMutableArray alloc] init];
    
    for(NSUInteger i = 0; i < [powers count]; i++){
        NSString *powerEdit = [powers[i] copy];
        powerEdit = [[powerEdit uppercaseString] stringByAppendingString:@"!"];
        [powerShout addObject:powerEdit];
    }
    
    return powerShout;
}



-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    
    NSMutableString *summonCaptainPlanet = [[NSMutableString alloc] init];
    [summonCaptainPlanet appendString:@"Let our powers combine:\n"];
    
    NSArray *powerShout = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for(NSUInteger i = 0; i < [powerShout count]; i++){
        [summonCaptainPlanet appendFormat:@"%@\n", powerShout[i]];
    }
    
    [summonCaptainPlanet appendString:@"Go Planet!"]; 
    
    return summonCaptainPlanet;
}



-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    NSString *premiumCheeseInStock = @"";
    
    for(NSUInteger i = 0; i < [cheesesInStock count]; i++){
        if([premiumCheeseNames containsObject:cheesesInStock[i]]){
            premiumCheeseInStock = cheesesInStock[i];
        }
    }
    
    if([premiumCheeseInStock length] == 0){
        return @"No premium cheeses in stock."; 
    }
    
    return premiumCheeseInStock;
}



-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for(NSUInteger i = 0; i < [moneyBags count]; i++){
        NSInteger numberOfBills = [moneyBags[i] length];
        [paperBills addObject:[NSString stringWithFormat:@"$%li", numberOfBills]];
    }
    
    return paperBills;
}

@end
