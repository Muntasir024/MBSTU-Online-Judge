#include<bits/stdc++.h>
using namespace std;

#define MX 105
#define INF 1000000000

struct node
{
    int val;
    int cost;
};

vector < node > G[MX];
bool vis[MX];
int dist[MX];

void reset()
{
    for (int i = 0; i < MX; i++)
    {
        G[i].clear();
        vis[i] = 0;
        dist[i] = INF;
    }
}

class cmp
{
public:
    bool operator() (node &A, node &B)
    {
        if (A.cost > B.cost) return true;
        return false;
    }
};

int dijkstra(int source, int Time)
{
    priority_queue<node, vector<node>, cmp> PQ;
    PQ.push({source, 0});

    int cnt = 0;
    while(!PQ.empty())
    {
        node current = PQ.top();
        PQ.pop();

        int val = current.val;
        int cost = current.cost;

        if (vis[val] == 1) continue;

        dist[val] = cost;
        vis[val] = 1;

        if (dist[val] <= Time)
        {
            cnt++;
        }

        for (int i = 0; i < G[val].size(); i++)
        {
            int nxt = G[val][i].val;
            int nxtCost = G[val][i].cost;

            if (vis[nxt] == 0)
            {
                PQ.push({nxt, cost + nxtCost});
            }
        }
    }
    return cnt;
}

int main()
{
    reset();

    int n, e, t;
    scanf("%d%d%d", &n, &e, &t);

    int m;
    scanf("%d", &m);
    for (int i = 1; i <= m; i++)
    {
        int u, v, w;
        scanf("%d%d%d", &u, &v, &w);

        G[v].push_back({u, w});
    }

    int ans = dijkstra(e, t);
    printf("%d\n", ans);
    return 0;
}
