#include <bits/stdc++.h>
using namespace std;
int main() {
    string s;
    getline(cin, s);
    set<char> arr;
    for (char c : s) {
        if (isalpha(c)) {
            arr.insert(tolower(c));
        }
    }

    if (arr.size() == 26) {
        cout << "pangram" << endl;
    } else {
        cout << "not pangram" << endl;
    }
}

