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
    if([l2 isEqualToString:@"PM"]){
        int i = f2.intValue + 12;
        f2 = [NSString stringWithFormat:@"%d",i];
    }
    NSString *hString=[f2 stringByAppendingString:mid];
    printf("%s\n",[hString UTF8String]);
    [pool drain];
    return 0;
}