#include <bits/stdc++.h>
using namespace std;

int main() {
    int t;
    cin >> t;

    while (t--) {
        int l;
        cin >> l;

        double w = (3.0 / 5.0) * l;
        double r = (1.0 / 5.0) * l;

        double a_f = l * w;
        double a_r = M_PI * r * r;
        double a_g = a_f - a_r;

        cout << fixed << setprecision(2);
        cout << a_r << " " << a_g << endl;
    }
}

