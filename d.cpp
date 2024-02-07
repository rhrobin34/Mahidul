#include <bits/stdc++.h>
using namespace std;
int main() {
    int T;
    cin >> T;
    while (T--) {
        int A, B, C;
        long long L, R;
        cin >> A >> B >> C >> L >> R;

        long long count = 0;

        for (long long x = L; x <= R; x++) {
            long long res = A * x * x + B * x + C;
            if (res >= L && res <= R) {
                count++;
            }
        }

        cout << count << endl;
    }
}
