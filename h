#include <bits/stdc++.h>
using namespace std;

int main() {
    vector<int> c = {5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 5};
    double a;

    while (true) {
        cin >> a;
        if (a == 0.0) break;

        int t = static_cast<int>(a * 100 + 0.5);
        vector<int> w(t + 1, 0);
        w[0] = 1;

        for (int i : c) {
            for (int j = i; j <= t; j++) {
                w[j] += w[j - i];
            }
        }

        cout << setw(6) << fixed << setprecision(2) << a << setw(17) << w[t] << endl;
    }

    return 0;
}
