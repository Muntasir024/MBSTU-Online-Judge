#include<bits/stdc++.h>
using namespace std;

int main()
{
    int a, b;
    cin >> a >> b;
    if(a+1==b) cout << (a*10+9) << " " << b*10 << endl;
    else if(a==b) cout << (a*10+1) << " " << (b*10+2) << endl;
    else if(a==9 && b==1) cout << "99 100" << endl;
    else cout << "-1" << endl;
    return 0;
}
