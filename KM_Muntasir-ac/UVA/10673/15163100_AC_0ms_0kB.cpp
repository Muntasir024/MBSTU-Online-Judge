#include<stdio.h>
int main()
{
    int t,x,y;
    scanf("%d",&t);
    while(t--)
    {
        scanf("%d%d",&x,&y);
        printf("%d %d\n", y-x%y, x%y);
    }
}
