#include <bits/stdc++.h>
using namespace std;

int main() {
    long long n, m;
    cin >> n >> m;
    long long r = ((m + 1) * n + (n + 1) * m) / 2;
    cout << r << endl;
    return 0;
}



//python

n, m = map(int, input().split())
r = ((m + 1) * n + (n + 1) * m) // 2
print(r)
