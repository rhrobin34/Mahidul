#include <bits/stdc++.h>
using namespace std;

int main() {
    int t;
    cin >> t;
    cin.ignore();

    for (int i = 1; i <= t; i++) {
        string s;
        getline(cin, s);

        int n;
        cin >> n;
        vector<int> d(n);
        int sum = 0;

        for (int j = 0; j < n; ++j) {
            cin >> d[j];
            if (d[j] > 0) {
                sum += d[j];
            }
        }

        cout << "Case " << i << ": " << sum << endl;
    }

    return 0;
}

