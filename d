#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    string s, a = "A", b = "B";
    long long c1 = 0, c2 = 0, c = 0, o;
    cin >> n >> s;

    if (n == 1) {
        for (size_t i = 0; (i = a.find(s, i)) != string::npos; i++) c1++;
        cout << c1 << endl;
        return 0;
    }

    if (n == 2) {
        for (size_t i = 0; (i = b.find(s, i)) != string::npos; i++) c2++;
        cout << c2 << endl;
        return 0;
    }

    for (size_t i = 0; (i = a.find(s, i)) != string::npos; i++) c1++;
    for (size_t i = 0; (i = b.find(s, i)) != string::npos; i++) c2++;

    for (int i = 3; i <= n; i++) {
        string ab = b + a;
        o = 0;
        for (size_t j = b.size() - min(b.size(), s.size() - 1); (j = ab.find(s, j)) != string::npos; j++) o++;
        c = c1 + c2 + o;
        c1 = c2;
        c2 = c;
        a.swap(b);
        b = a + b;
    }

    cout << c << endl;
    return 0;
}

