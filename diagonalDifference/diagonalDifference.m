#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    int a[n][n];
    int da=0;
    int db=0;
    int result = 0;
    for(int a_i = 0; a_i < n; a_i++){
       for(int a_j = 0; a_j < n; a_j++){
          scanf("%d",&a[a_i][a_j]);
          if ( a_i == a_j ){
              da += a[a_i][a_j];
          }
          if ( a_j == ( n - 1 - a_i ) ){
              db += a[a_i][a_j];
          }
       }
    }
    printf("%i\n",abs(da-db));
    [pool drain];
    return 0;
}
