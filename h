#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;
    vector<vector<int>> a(n, vector<int>(m)), dp(n, vector<int>(m));

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cin >> a[i][j];
        }
    }

    dp[0][0] = a[0][0];

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (i == 0 && j == 0) continue;
            int d1 = (i > 0) ? dp[i - 1][j] : INT_MAX;
            int d2 = (j > 0) ? dp[i][j - 1] : INT_MAX;
            dp[i][j] = min(d1, d2) + a[i][j];
        }
    }

    cout << dp[n - 1][m - 1] << endl;
    return 0;
}

