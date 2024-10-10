#include <bits/stdc++.h>
using namespace std;

int main() {
    string a, b, r = "";
    int i, j, c = 0, s;

    cin >> a >> b;

    i = a.size() - 1;
    j = b.size() - 1;

    while (i >= 0 || j >= 0 || c) {
        s = c;

        if (i >= 0) s += a[i--] - '0';
        if (j >= 0) s += b[j--] - '0';

        r = char(s % 2 + '0') + r;
        c = s / 2;
    }

    cout << r << endl;

    return 0;
}

