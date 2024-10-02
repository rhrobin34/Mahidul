#include <bits/stdc++.h>
using namespace std;

vector<vector<int>> a;
vector<int> d, f;
int t = 0;

void dfs(int v) {
    t++;
    d[v] = t;
    for (int u : a[v]) {
        if (d[u] == 0) {
            dfs(u);
        }
    }
    t++;
    f[v] = t;
}

int main() {
    int n;
    cin >> n;

    a.resize(n + 1);
    d.resize(n + 1, 0);
    f.resize(n + 1, 0);

    for (int i = 1; i <= n; i++) {
        int u, k;
        cin >> u >> k;
        for (int j = 0; j < k; j++) {
            int v;
            cin >> v;
            a[u].push_back(v);
        }
    }

    for (int i = 1; i <= n; i++) {
        sort(a[i].begin(), a[i].end());
    }

    for (int i = 1; i <= n; i++) {
        if (d[i] == 0) {
            dfs(i);
        }
    }

    for (int i = 1; i <= n; i++) {
        cout << i << " " << d[i] << " " << f[i] << endl;
    }

    return 0;
}

