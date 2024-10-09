#include <bits/stdc++.h>

using namespace std;

int main() {
    int n;
    while (cin >> n && n != 0) {
        int l;
        cin >> l;
        vector<vector<int>> g(n);
        for (int i = 0; i < l; i++) {
            int a, b;
            cin >> a >> b;
            g[a].push_back(b);
            g[b].push_back(a);
        }

        vector<int> c(n, -1);
        bool b = true;

        for (int s = 0; s < n && b; s++) {
            if (c[s] == -1) {
                queue<int> q;
                q.push(s);
                c[s] = 0;

                while (!q.empty() && b) {
                    int v = q.front();
                    q.pop();

                    for (int w : g[v]) {
                        if (c[w] == -1) {
                            c[w] = 1 - c[v];
                            q.push(w);
                        } else if (c[w] == c[v]) {
                            b = false;
                            break;
                        }
                    }
                }
            }
        }

        if (b)
            cout << "BICOLORABLE." << endl;
        else
            cout << "NOT BICOLORABLE." << endl;
    }

    return 0;
}

