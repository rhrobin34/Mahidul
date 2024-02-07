#include <bits/stdc++.h>
using namespace std;
int main() {
    int h, m;
    double a;
    cin >> h >> m;
    double ha = fmod(30 * h + 0.5 * m, 360);
    double ma = 6 * m;
    a = fabs(ha - ma);
    if (a > 180) {
        a = 360 - a;
    }
    cout << fixed << a << endl;
}
