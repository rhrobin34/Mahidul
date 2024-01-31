#include <bits/stdc++.h>
using namespace std;
int main() {
    string s;
    cin >> s;
    int arr = s.length();
    if (arr % 2 == 0 && s.substr(0, arr / 2) == s.substr(arr / 2, arr / 2)) {
        cout << "yes" << endl;
    } else {
        cout << "no" << endl;
    }
}
