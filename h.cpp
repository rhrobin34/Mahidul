#include <bits/stdc++.h>
using namespace std;
int main() {
    int a, b;
    cin >> a >> b;
    int mi = abs(a - b) + 1;
    int ma = a + b - 1;
    int r = max(0, ma - mi + 1);
    cout << r << endl;
}
