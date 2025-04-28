import os
import sys

def f(s1,s2):
    for i in os.listdir(s1):
        ss1=os.path.join(s1,i)
        ss2=os.path.join(s2,i)
        if os.path.isfile(ss1):
            if os.path.exists(ss2):
                n,m=os.path.splitext(i)
                k=1
                while os.path.exists(os.path.join(s2,f"{n}.{k}{m}")):
                    k+=1
                ss2=os.path.join(s2,f"{n}.{k}{m}")
            try:
                with open(ss1,'rb') as a,open(ss2,'wb') as b: b.write(a.read())
            except:
                pass
        elif os.path.isdir(ss1):
            os.makedirs(ss2,exist_ok=True)
            f(ss1,ss2)

if len(sys.argv)!=3:
    sys.exit()
f(sys.argv[1],sys.argv[2]);
