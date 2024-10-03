n = int(input())
m = input()

s = 0
f = 0

for i in range(n - 1):
    if (m[i] == ':' and m[i + 1] == ')') or (m[i] == '(' and m[i + 1] == ':'):
        s += 1
    elif (m[i] == ':' and m[i + 1] == '(') or (m[i] == ')' and m[i + 1] == ':'):
        f += 1

if s > f:
    print("HAPPY")
elif s < f:
    print("SAD")
else:
    print("BORED")
