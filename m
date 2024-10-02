#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, q, c = 0;

    while (true) {
        cin >> n >> q;
        if (n == 0 && q == 0) {
            break;
        }

        c++;
        vector<int> m(n);

        for (int i = 0; i < n; i++) {
            cin >> m[i];
        }

        sort(m.begin(), m.end());
        cout << "CASE# " << c << ":\n";

        for (int i = 0; i < q; i++) {
            int x;
            cin >> x;

            auto it = lower_bound(m.begin(), m.end(), x);
            if (it != m.end() && *it == x) {
                cout << x << " found at " << (it - m.begin() + 1) << "\n";
            } else {
                cout << x << " not found\n";
            }
        }
    }
}

