#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, k, a, b, d, u, v, r = 0;
    cin >> n >> k >> a >> b >> d;

    vector<vector<int>> g(n + 1);
    vector<bool> x(n + 1, false);

    for (int i = 0; i < k; i++) {
        cin >> u >> v;
        g[u].push_back(v);
    }

    vector<int> p;
    p.push_back(a);
    vector<int> c;
    c.push_back(0);
    vector<vector<bool>> z(n + 1, vector<bool>(d + 1, false));

    while (!p.empty()) {
        int y = p.back();
        int q = c.back();
        p.pop_back();
        c.pop_back();

        if (y == b && q <= d) {
            r++;
            continue;
        }

        if (q >= d || z[y][q]) continue;
        z[y][q] = true;

        for (int i : g[y]) {
            if (!x[i]) {
                p.push_back(i);
                c.push_back(q + 1);
            }
        }
    }

    cout << r << endl;

    return 0;
}

