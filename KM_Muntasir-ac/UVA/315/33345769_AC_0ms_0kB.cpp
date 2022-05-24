#include <bits/stdc++.h>
using namespace std;

int b, i, n, m, vaxt;
vector<int > graph[1008];
int used[1007], d[1007], up[1007];
set<int> ArtPoints;

void dfs(int v, int p = -1)
{
    int i, to, children;
    used[v] = 1;
    d[v] = up[v] = vaxt++;
    children = 0;
    for (i = 0; i < graph[v].size(); i++)
    {
        to = graph[v][i];
        if (to == p)
            continue;
        if (used[to])
            up[v] = min(up[v], d[to]);
        else
        {
            dfs(to, v);
            up[v] = min(up[v], up[to]);
            if (up[to] >= d[v] && p != -1)
                ArtPoints.insert(v);
            children++;
        }
    }
    if (p == -1 && children > 1)
        ArtPoints.insert(v);
}

int main()
{
    while(scanf("%d", &n) && n)
    {
        ArtPoints.clear();
        for(i=0;i<=107;i++)
        {
            graph[i].clear(), used[i] = 0, d[i] = 0, up[i]=0;
        }

        int a, b;
        while(cin >> a && a)
        {
            while(getchar()!='\n')
            {
                cin >> b;
                graph[a].push_back(b);
                graph[b].push_back(a);
            }
        }
        vaxt = 1;
        for (i = 1; i <= n; i++)
            if (!used[i])
                dfs(i);

        printf("%d\n", ArtPoints.size());
    }
    return 0;
}
