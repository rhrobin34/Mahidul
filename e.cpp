#include <bits/stdc++.h>
using namespace std;
int main() {
    int t;
    cin >> t;

    for (int j = 1; j <= t; j++) {
        int n;
        cin >> n;

        vector<int> arr(n);
        for (int i = 0; i < n; i++) {
            cin >> arr[i];
        }

        long long m = arr[0];
        long long ma = arr[0];
        long long mi = arr[0];

        for (int i = 1; i < n; i++) {
            long long temp = ma;
            ma = max((long long)arr[i], max(arr[i] * ma, arr[i] * mi));
            mi = min((long long)arr[i], min(arr[i] * temp, arr[i] * mi));
            m = max(m, ma);
        }

        cout << "Case " << j << ": " << m << endl;
    }

    
}
