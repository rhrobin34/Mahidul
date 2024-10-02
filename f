#include <bits/stdc++.h>
using namespace std;

int main() {
    string s;
    cin >> s;
    int counts = 1;

    for (char c : s) {
        if (isupper(c)) {
            counts++;
        }
    }

    cout << counts << endl;
}

