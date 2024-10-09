#include <iostream>
#include <string>
using namespace std;

int main() {
    string s;
    while (cin >> s) {
        string r = "";
        char p = '0';
        for (char c : s) {
            char curr = '0';
            if (c == 'B' || c == 'F' || c == 'P' || c == 'V') curr = '1';
            else if (c == 'C' || c == 'G' || c == 'J' || c == 'K' || c == 'Q' || c == 'S' || c == 'X' || c == 'Z') curr = '2';
            else if (c == 'D' || c == 'T') curr = '3';
            else if (c == 'L') curr = '4';
            else if (c == 'M' || c == 'N') curr = '5';
            else if (c == 'R') curr = '6';
            if (curr != '0' && curr != p) r += curr;
            p = curr;
        }
        cout << r << endl;
    }
    return 0;
}
