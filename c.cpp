#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, k;
    cin >> n >> k;

    vector<int> arr(n);
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    sort(arr.begin(), arr.end());

    for (int i = 0; i < n - 1; i++) {
        int cost = (arr[i + 1] - arr[i]) * (i + 1);
        if (cost <= k) {
            k -= cost;
        } else {
            cout << arr[i] + k / (i + 1) << endl;
            return 0;
        }
    }

    cout << arr.back() + k / n << endl;
}
