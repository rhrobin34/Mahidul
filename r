#include <bits/stdc++.h>
using namespace std;

int main() {
    int t;
    cin >> t;
    for (int i = 1; i <= t; i++) {
        int k, n, m;
        cin >> k >> n >> m;

        vector<int> s(k);
        for (int j = 0; j < k; j++) {
            cin >> s[j];
        }

        vector<vector<int>> g(n + 1);
        for (int j = 0; j < m; j++) {
            int u, v;
            cin >> u >> v;
            g[u].push_back(v);
        }

        vector<bool> r(n + 1, true);

        for (int j = 0; j < k; j++) {
            int c = s[j];
            vector<bool> v(n + 1, false);
            vector<int> st;
            st.push_back(c);

            while (!st.empty()) {
                int curr = st.back();
                st.pop_back();
                if (!v[curr]) {
                    v[curr] = true;
                    for (int nxt : g[curr]) {
                        if (!v[nxt]) {
                            st.push_back(nxt);
                        }
                    }
                }
            }

            for (int l = 1; l <= n; l++) {
                if (!v[l]) {
                    r[l] = false;
                }
            }
        }

        int cnt = 0;
        for (int j = 1; j <= n; j++) {
            if (r[j]) {
                cnt++;
            }
        }

        cout << "Case " << i << ": " << cnt << endl;
    }

    return 0;
}

