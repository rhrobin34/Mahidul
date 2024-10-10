#include <bits/stdc++.h>
using namespace std;

int m = 9929;
long long f[501], i[501];

int main() {
    int n, k;
    cin >> n >> k;

    f[0] = 1;
    for (int j = 1; j <= n; j++) {
        f[j] = (f[j - 1] * j) % m;
    }

    i[n] = 1;
    long long x = f[n], y = m - 2, z = 1;
    while (y > 0) {
        if (y % 2 == 1) {
            z = (z * x) % m;
        }
        x = (x * x) % m;
        y /= 2;
    }
    i[n] = z;
    
    for (int j = n - 1; j >= 0; j--) {
        i[j] = (i[j + 1] * (j + 1)) % m;
    }

    if (k > n) {
        cout << 0 << endl;
    } else {
        cout << (f[n] * i[k] % m) * i[n - k] % m << endl;
    }

    return 0;
}

