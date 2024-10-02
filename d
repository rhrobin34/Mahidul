#include <bits/stdc++.h>
using namespace std;

int main() {
    int t;
    cin >> t;

    const double pi = 2 * acos(0.0);
    for (int i = 1; i <= t; i++) {
        double r;
        cin >> r;

        double square = (2 * r) * (2 * r);
        double circle = pi * r * r;

        double area = square - circle;
        cout << "Case " << i << ": " << fixed << setprecision(2) << area << endl;
    }
}

