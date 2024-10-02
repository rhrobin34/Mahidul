#include <bits/stdc++.h>
using namespace std;

int main() {
    int r, c;
    cin >> r >> c;

    for (int i = 0; i < r; i++) {
        for (int j = 0; j < c; j++) {
            cout << "..O..";
            if (j != c - 1) cout << "";
        }
        cout << endl;

        for (int j = 0; j < c; j++) {
            cout << "O.o.O";
            if (j != c - 1) cout << "";
        }
        cout << endl;

        for (int j = 0; j < c; j++) {
            cout << "..O..";
            if (j != c - 1) cout << "";
        }
        cout << endl;
    }
}

