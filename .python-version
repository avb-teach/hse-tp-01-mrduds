import os

def f(s1,s2):
    for i in os.listdir(s1):
        ss1=os.path.join(s1,i)
        ss2=os.path.join(s2,i)
        if os.path.isfile(ss1):
            if os.path.exists(ss2):
                k=1
                while os.path.exists(os.path.join(s2, f"{item}.{k}")):
                    k+=1
                ss2=os.path.join(s2,f"{item}.{k}")
            open(ss2,'wb').write(open(ss1,'rb').read())
        elif os.path.isdir(ss1):
            os.makedirs(ss2,exist_ok=True)
            f(ss1,ss2)

s1=input("Input a source directory here: ")
s2=input("Input a destination directory here: ")
os.makedirs(s2,exist_ok=True)
f(s1,s2)
