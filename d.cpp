#include <bits/stdc++.h>
using namespace std;
int main() {
    int N;
    cin >> N;
    int count = 0;
    int cur = 2;
    while (count < N) {
        bool p = true;
        for (int i = 2; i * i <= cur; i++) {
            if (cur % i == 0) {
                p = false;
                break;
            }
        }
        if (p) {
            cout << cur << " ";
            count++;
        }

        cur++;
    }
}
