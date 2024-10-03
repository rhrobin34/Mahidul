#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, x, m;
    cin >> n >> x;
    string s;
    cin >> s;
    cin >> m;
    string p;
    cin >> p;

    x--;

    string r;
    r += s[x];

    for (int i = 0; i < m; i++) {
        if (p[i] == 'L') {
            x--;
        } else if (p[i] == 'R') {
            x++;
        }
        r += s[x];
    }

    cout << r << endl;

    return 0;
}
