#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    vector<vector<int>> a(n + 1);
    for (int i = 1; i <= n; i++) {
        int u, k;
        cin >> u >> k;
        for (int j = 0; j < k; j++) {
            int v;
            cin >> v;
            a[u].push_back(v);
        }
    }

    vector<int> d(n + 1, -1);
    d[1] = 0;

    queue<int> q;
    q.push(1);

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        for (int v : a[u]) {
            if (d[v] == -1) {
                d[v] = d[u] + 1;
                q.push(v);
            }
        }
    }

    for (int i = 1; i <= n; i++) {
        cout << i << " " << d[i] << endl;
    }

    return 0;
}

