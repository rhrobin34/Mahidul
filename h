#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    string m;
    cin >> m;

    int s = 0, f = 0;

    for (int i = 0; i < n - 1; ++i) {
        if ((m[i] == ':' && m[i + 1] == ')') || (m[i] == '(' && m[i + 1] == ':')) {
            s++;
        } else if ((m[i] == ':' && m[i + 1] == '(') || (m[i] == ')' && m[i + 1] == ':')) {
            f++;
        }
    }

    if (s > f) {
        cout << "HAPPY" << endl;
    } else if (s < f) {
        cout << "SAD" << endl;
    } else {
        cout << "BORED" << endl;
    }

    return 0;
}

