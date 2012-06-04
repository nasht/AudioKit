//
//  CSDInstrument.m
//  CsdReinvention
//
//  Created by Aurelius Prochazka on 4/11/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "CSDInstrument.h"
//
@implementation CSDInstrument
@synthesize orchestra;

-(void) joinOrchestra:(CSDOrchestra *) newOrchestra {
    orchestra = newOrchestra;
}

-(id) initWithOrchestra:(CSDOrchestra *) newOrchestra {
    self = [super init];
    if (self) {
        [self joinOrchestra:newOrchestra];
        csdRepresentation = [NSMutableString stringWithString:@""];   
    }
    return self; 
}

-(NSString *) textForOrchestra {
    return @"Undefined";
}

-(void) addOpcode:(CSDOpcode *)newOpcode {
    [csdRepresentation appendString:[newOpcode description]];
    [csdRepresentation appendString:@"\n"];
}

//-(NSString *) csdEntry {
//    NSString *text  = @"";
//    int pIndex = 4;    
//    for (CSDOpcode *o in  opcodes) {
//        text = [text stringByAppendingString:[o textWithPValue:pIndex]];
//    }
//    text = [text stringByAppendingFormat:@"out %@\n", output];
//    return text;
//    
////    return[NSString stringWithFormat:
////                     @"%@%@ %@ %0.2f, %0.2f, %i\n",
////                     o.output, o.opcode, o.amplitude, freq, ifn];
//}
//
//
@end
