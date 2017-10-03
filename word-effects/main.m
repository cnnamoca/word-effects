//
//  main.m
//  word-effects
//
//  Created by Carlo Namoca on 2017-10-02.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //        //app needs to take two things
        //        //a number to indicate which operation to use
        //        //a string, to operate on
        //
        //
        //        //255 unit long array of characters
        //        char inputChars[255];
        //
        //        printf ("input a string:");
        //
        //        //limit input to max 255 characters
        //        fgets (inputChars, 255, stdin);
        //
        //        //print your c string
        //        printf ("your string is %s \n", inputChars);
        //
        //        //convert char array to an NSString Object
        //        NSString *inputString = [NSString stringWithUTF8String: inputChars];
        //
        //        //print NSString Object
        //        NSLog (@"Input was %@", [inputString uppercaseString]);
        
        int choice;
        char inputChars[255];
        printf ("input a string:");
        fgets (inputChars, 255, stdin);
        printf ("your string is %s \n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String: inputChars];
        
        printf ("1: Uppercase\n");
        printf ("2: Lowercase\n");
        printf ("3: Numberize (Write a number and I'll convert it into an integer!)\n");
        printf ("4: Canadianize\n");
        printf ("5: Respond\n");
        printf ("6: De-space-it\n\n");
        
        printf ("Select an option:\n");
        scanf("%d", &choice);
        
        switch(choice){
            case 1: NSLog (@"Input was %@", [inputString uppercaseString]); break;
            case 2: NSLog (@"Input was %@", [inputString lowercaseString]); break;
            
            //still need to check this
            case 3: NSLog (@"Input was %ld", (long)[inputString integerValue]); break;

            case 4: NSLog (@"Input was %@", [inputString stringByAppendingString:@"eh"]); break;
            
            case 6: NSLog (@"Input was %@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]); break;
            
            
            default:
            break;
        }
        
    }
    
    
    
    
    
    return 0;
}
