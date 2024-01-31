#include <bits/stdc++.h>
using namespace std;
int main()
{
    char num[10001];
    cin >> num;
    int d[10] = {0};
    for (int i = 0; i < strlen(num); i++)
    {
        int digit = num[i] - '0';
        d[digit]++;
    }
    int m = 0;
    for (int i = 1; i < 10; i++)
    {
        if (d[i] > d[m])
        {
            m = i;
        }
        else if (d[i] == d[m] && i < m)
        {
            m = i;
        }
    }
    cout << m << endl;
}
