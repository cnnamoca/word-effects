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
        
        
        char decision;
        int choice;
        char inputChars[255];
        
        printf ("Check these options out!\n");
        printf ("1: Uppercase\n");
        printf ("2: Lowercase\n");
        printf ("3: Numberize (Write a number and I'll convert it into an integer!)\n");
        printf ("4: Canadianize\n");
        printf ("5: Respond (Try adding a '?' or '!' in the end of your sentence)\n");
        printf ("6: De-space-it\n\n");
        
        printf ("input a string: ");
        fgets (inputChars, 255, stdin);
        printf ("your string is: %s \n", inputChars);
        NSString *tempInputString = [NSString stringWithUTF8String: inputChars];
        NSString *inputString = [tempInputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        
        printf ("Shall we do some WORD PLAY on your string? y/n: ");
        scanf ("%c", &decision);
        
        while (decision == 'y') {
            
            printf ("Select an option: ");
            scanf("%d", &choice);
            
            switch(choice){
                case 1:
                    NSLog (@"Input was %@", [inputString uppercaseString]);
                    break;
                
                case 2:
                    NSLog (@"Input was %@", [inputString lowercaseString]);
                    break;
                
                case 3:
                    NSLog (@"Input was %ld", (long)[inputString integerValue]);
                    break;
                
                case 4:
                    NSLog (@"Input was %@", [inputString stringByAppendingString:@" eh"]);
                    break;
                
                case 5:
                //REMEMBER TO PUT {} FOR CASES LIKE THESE
                    {
                        NSString *lastCharacter = [inputString substringFromIndex:[inputString length] - 1];
                        if ([lastCharacter isEqualToString:@"!"]) {
                        NSLog (@"Whoa, calm down!");
                        break;
                        } else if ([lastCharacter isEqualToString:@"?"]) {
                        NSLog (@"I don't know :/");
                        }
                        break;
                    }
                
                case 6:
                    NSLog (@"Input was %@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                
                default:
                break;
                }
            printf ("Wanna try another option? y/n:");
            scanf (" %c", &decision);
                }
            printf ("SEEYA!\n");
            }
    
    return 0;
}
