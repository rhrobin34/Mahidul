#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    int count = 0;

    for (int i = 1; i <= n; i++) {
        string str = to_string(i);
        if (str.find('3') != string::npos && str.find('5') != string::npos && str.find('7') != string::npos) {
            bool val = true;
            for (char c : str) {
                if (c != '3' && c != '5' && c != '7') {
                    val = false;
                    break;
                }
            }
            if (val) count++;
        }
    }

    cout << count << endl;
    return 0;
}

