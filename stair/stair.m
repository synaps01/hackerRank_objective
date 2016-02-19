//
//  main.m
//  stair
//
//  Created by Alex on 18/02/16.
//  Copyright © 2016 temazcal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    for (int i = 1; i<=n ;i++ ){
        NSString *stairString = @"";
        for(int j=0; j<n; j++){
            if (j<(n-i)){
                stairString = [stairString stringByAppendingString:@" "];
            }else{
                stairString = [stairString stringByAppendingString:@"#"];
            }
        }
        printf("%s\n", [stairString UTF8String]);
    }
    [pool drain];
    return 0;
}
