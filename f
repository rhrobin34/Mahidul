#include <bits/stdc++.h>
using namespace std;

int d[1002], p[1002], n, k, s;

int main() {
    cin >> n;
    for (int i = 1; i <= n; i++) cin >> p[i];
    cin >> k;

    for (int i = 1; i <= n + 1; i++) d[i] = -1000000000;

    d[0] = 0;

    for (int i = 1; i <= n + 1; i++) {
        for (int j = 1; j <= k; j++) {
            if (i - j >= 0) d[i] = max(d[i], d[i - j] + p[i]);
        }
    }

    cout << d[n + 1] << endl;

    return 0;
}

