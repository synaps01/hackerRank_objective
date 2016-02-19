#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString* timeString;
    char* time_temp = (char *)malloc(10240 * sizeof(char));
    scanf("%s",time_temp);
    timeString = [NSString stringWithFormat:@"%s", time_temp];
    NSString *f2=[timeString substringToIndex:2];
    NSString *l2=[timeString substringFromIndex: [timeString length] - 2];
    NSString *mid=[[timeString substringFromIndex:2] substringToIndex:[timeString length]-4];
    int i = f2.intValue;
    if([l2 isEqualToString:@"PM"]){
        if(i<12){
            i+=12;
            f2 = [NSString stringWithFormat:@"%d",i];
        }else if(i==0){
            f2 = @"00";
        }
    }else{
        if(i==12){
            f2 = @"00";
        }
    }
    NSString *hString=[f2 stringByAppendingString:mid];
    printf("%s\n",[hString UTF8String]);
    [pool drain];
    return 0;
}