#include <stdio.h>
int main()
{
    int t;
    long a,b;
    scanf("%d",&t);

    while(t--) {
        scanf("%ld %ld", &a,&b);
        if (a>b)
            printf(">\n");
        else if (a<b)
            printf("<\n");
        else
            printf("=\n");
    }

    return 0;
}
