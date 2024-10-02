#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    vector<int> a(n);
    for (int i = 0; i < n; i++) {
        cin >> a[i];
    }

    vector<int> p(n);
    p[0] = a[0];
    for (int i = 1; i < n; i++) {
        p[i] = p[i - 1] + a[i];
    }

    int q;
    cin >> q;
    while (q--) {
        int x, y;
        cin >> x >> y;

        int s = p[y];
        if (x > 0) {
            s -= p[x - 1];
        }

        cout << s << endl;
    }
}
