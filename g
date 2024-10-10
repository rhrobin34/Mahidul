#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, t = 0;
    cin >> n;
    int m = n * 100;

    while (m >= 120) {
        t += m / 120;
        m = m % 120 + (m / 120) * 20;
    }

    cout << t << endl;

    return 0;
}

