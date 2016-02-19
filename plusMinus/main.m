#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int arr[n];
    float pos=0;
    float neg=0;
    float zer=0;
    for(int arr_i = 0; arr_i < n; arr_i++){
       scanf("%d",&arr[arr_i]);
        if(arr[arr_i]>0){
            pos++;
        }else if(arr[arr_i]<0){
            neg++;
        }else{
            zer++;
        }    
    }
    printf("%f\n",(pos/n));
    printf("%f\n",(neg/n));
    printf("%f\n",(zer/n));  
    [pool drain];
    return 0;
}

