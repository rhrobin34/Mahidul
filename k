#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, q;
    cin >> n >> q;

    int a[n+1], p[n+1];
    p[0] = 0;

    for (int i = 1; i <= n; i++) {
        cin >> a[i];
        p[i] = p[i-1] + a[i];
    }

    for (int i = 0; i < q; i++) {
        int x, y;
        cin >> x >> y;
        cout << p[y] - p[x-1] << endl;
    }

    return 0;
}

