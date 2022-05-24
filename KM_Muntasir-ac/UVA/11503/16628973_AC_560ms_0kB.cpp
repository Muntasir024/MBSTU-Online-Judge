#include<bits/stdc++.h>
using namespace std;

int par[100007], rnk[100007];
int i, j, m, mx, t;
string p, pp;

int Find(int x)
{
    if(par[x]==x)
        return x;
    else
        return par[x] = Find(par[x]);
}


int main()
{
    scanf("%d", &t);
    while(t--)
    {
        scanf("%d", &m);
        map <string, int > a;
        for(i=0;i<=100000;i++)
            par[i]=i, rnk[i]=1;
        j=1;
        for(i=1; i<=m; i++)
        {
            cin>>p>>pp;
            if(a.count(p)==0)
            {
                a[p]=j;
                j++;
            }
            if(a.count(pp)==0)
            {
                a[pp]=j;
                j++;
            }
            int u=Find(a[p]), v=Find(a[pp]);
            if(u != v)
            {
                par[u]=v;
                rnk[v]+=rnk[u];
            }
            printf("%d\n", rnk[v]);
        }

    }
}

