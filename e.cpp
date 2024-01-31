#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        int lr, r;
        cin >> lr >> r;
        int l = -1;
        for (int num = r; num >= lr; --num)
        {
            bool ip = true;
            if (num < 2)
            {
                ip = false;
            }
            else
            {
                for (int j = 2; j <= sqrt(num); ++j)
                {
                    if (num % j == 0)
                    {
                        ip = false;
                        break;
                    }
                }
            }
            if (ip)
            {
                l = num;
                break;
            }
        }
        cout << l << endl;
    }

    return 0;
}
