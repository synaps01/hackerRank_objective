#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int arr[n];
    for(int arr_i = 0; arr_i < n; arr_i++){
       scanf("%d",&arr[arr_i]);
    }
    int result = 0;
    for(int i=0; i<n; i++){
        result += arr[i]; 
    }
    printf("%d",result);
    [pool drain];
    return 0;
}
