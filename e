#include <bits/stdc++.h>
using namespace std;

int main() {
    int t;
    cin >> t;

    for (int c = 1; c <= t; c++) {
        int n;
        cin >> n;

        int d = 0;
        for (int i = 0; i < n; i++) {
            int x;
            cin >> x;
            if (x > 0) {
                d += x;
            }
        }

        cout << "Case " << c << ": " << d << endl;
    }
}

