#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;
    char g[400][400];

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cin >> g[i][j];
        }
    }

    string p;
    for (int i = 0; i < n; i++) {
        if (i % 2 == 0) {
            for (int j = 0; j < m - 1; j++) {
                p += 'R';
            }
            if (i != n - 1) {
                p += 'D';
            }
        } else {
            for (int j = 0; j < m - 1; j++) {
                p += 'L';
            }
            if (i != n - 1) {
                p += 'D';
            }
        }
    }

    cout << p << endl;
    return 0;
}
