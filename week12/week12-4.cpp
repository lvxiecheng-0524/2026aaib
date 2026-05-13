///week12-4.cpp 最大公因數
///ex.51/68 可約分成3/4 因爲最大公因數17
#include <stdio.h>
int main()
{
        printf("Please input two numbers (ex. 51 68):");
        int a, b;
        scanf("%d%d",&a,&b);
        int ans = 1;///1一定可以整除任何數，是答案候選人
        for(int i=1;i<=a;i++){///把1...a全試過
                if(a%i==0 && b%i==0) ans = i;
                ///如果i可以整除a 也可以整除b，就是最大公因數
        }
        printf("The greatest common divisor is : %d\n", ans);

        printf("%d / %d approximation,become %d / %d \n", a, b, a/ans, b/ans);
}
