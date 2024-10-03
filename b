#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, m, a, b;
    cin >> n >> m >> a >> b;

    vector<string> g(m);
    for (int i = 0; i < m; i++) {
        cin >> g[i];
    }

    vector<vector<vector<int>>> d(m, vector<vector<int>>(n, vector<int>(2, 1e9)));
    priority_queue<pair<int, pair<int, pair<int, int>>>, vector<pair<int, pair<int, pair<int, int>>>>, greater<pair<int, pair<int, pair<int, int>>>>> q;

    d[0][0][0] = 0;
    q.push({0, {0, {0, 0}}});

    int dx[] = {-1, 1, 0, 0};
    int dy[] = {0, 0, -1, 1};

    while (!q.empty()) {
        int c = q.top().first;
        int x = q.top().second.first;
        int y = q.top().second.second.first;
        int s = q.top().second.second.second;
        q.pop();

        if (c > d[x][y][s]) continue;
        if (x == m - 1 && y == n - 1) {
            cout << c << endl;
            return 0;
        }

        for (int i = 0; i < 4; i++) {
            int nx = x + dx[i];
            int ny = y + dy[i];
            if (nx >= 0 && nx < m && ny >= 0 && ny < n && g[nx][ny] == '.') {
                int ns = 1 - s;
                int nc = c + (s == 0 ? b : a);
                if (nc < d[nx][ny][ns]) {
                    d[nx][ny][ns] = nc;
                    q.push({nc, {nx, {ny, ns}}});
                }
            }
        }
    }

    cout << "IMPOSSIBLE" << endl;
    return 0;
}
