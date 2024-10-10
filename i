#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    vector<set<int>> s(n);

    for (int i = 0; i < n; i++) {
        int t;
        cin >> t;
        for (int j = 0; j < t; j++) {
            int x;
            cin >> x;
            s[i].insert(x);
        }
    }

    int m;
    cin >> m;
    for (int i = 0; i < m; i++) {
        string q;
        int a, b;
        cin >> q >> a >> b;
        a--; b--;

        if (q == "INTERSECTION") {
            set<int> res;
            for (int x : s[a]) {
                if (s[b].count(x)) res.insert(x);
            }
            cout << res.size() << endl;
        } else if (q == "UNION") {
            set<int> res = s[a];
            res.insert(s[b].begin(), s[b].end());
            cout << res.size() << endl;
        }
    }

    return 0;
}

