#include <bits/stdc++.h>
using namespace std;

int main() {
    int t;
    cin >> t;
    for (int i = 1; i <= t; i++) {
        int a, b, c;
        cin >> a >> b >> c;
        string type;
        if (a + b <= c || a + c <= b || b + c <= a) {
            type = "Invalid";
        } else if (a == b && b == c) {
            type = "Equilateral";
        } else if (a == b || b == c || a == c) {
            type = "Isosceles";
        } else {
            type = "Scalene";
        }
        cout << "Case " << i << ": " << type << endl;
    }
    return 0;
}
