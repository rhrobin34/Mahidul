#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, h;
    cin >> n >> h;
    vector<int> t(n);
    for (int i = 0; i < n; i++) {
        cin >> t[i];
    }
    sort(t.begin(), t.end());
    int c = 0, tot = 0;
    for (int i = 0; i < n; i++) {
        tot += t[i];
        if (tot <= h) {
            c++;
        } else {
            break;
        }
    }

    cout << c << endl;
}

