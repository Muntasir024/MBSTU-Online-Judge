#include<bits/stdc++.h>
using namespace std;

int main()
{
    int t,n,i,l;
    cin>>t;
    while(t--)
    {
        cin>>n;
        l=0;
        for(i=1;i<=n;i++)
        {
            if(n%i==0)
            {
                if(l==0)
                    l=1;
                else
                    l=0;
            }
        }
        cout<<l<<endl;
    }

    return 0;
}