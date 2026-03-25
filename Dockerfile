FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3


CMD ["python3", "-c", "\
def isHappy(n):\n\
  a = 0\n\
  b = set()\n\
  while(n != 0) :\n\
    a = a + (n % 10) * (n % 10)\n\
    n = n // 10\n\
    if(n == 0) :\n\
      if(a == 1) :\n\
        return True\n\
      elif (a in b) :\n\
        return False\n\
      else :\n\
        b.add(a)\n\
        n = a\n\
        a = 0\n\
        continue\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]