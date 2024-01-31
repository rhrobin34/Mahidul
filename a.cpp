#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    unordered_map<string, int> arr;
    for (int i = 0; i < n; i++)
    {
        string brr;
        cin >> brr;
        if (arr.find(brr) == arr.end())
        {
            arr[brr] = 1;
            cout << "OK" << endl;
        }
        else
        {
            cout << brr << arr[brr] << endl;
            arr[brr] += 1;
        }
    }
}
