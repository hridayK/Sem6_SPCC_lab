#!/usr/bin/env python
# coding: utf-8

# ### Defining Grammar:

# In[1]:


gm = {
    'S':'Aa',
    'A':'B',
    'B':'CTD',
    'C':'ε',
    'T':'ε',
    'D':'ca'
    }


# In[2]:


'Aa' in gm


# In[3]:


def traverse(symbol:str):
    output = symbol[0]
    while(True):
        if output in gm:
            output=gm[output][0]
        else:
            break
    return output


# In[4]:


def traverser(prod:str):
    pointer=0
    return traverse('S')


# In[5]:


# traverser(gm['B'])
traverse('S')


# In[6]:


def first(nt: str):
    print(f"jump to {nt}")
    pointer=0
    if nt in gm:
        x = gm[nt]
        print(nt, '->', x)
    else:
        return 'null'
    if(x[pointer].isupper() and gm[x[pointer]]!='ε'):
        first(x[pointer])
    elif(x[pointer].islower()):
        print("First of gramar is: " + str(x[pointer]))
    elif(x[pointer].isupper()):
        first(x[pointer+1])
    if(pointer==len(x)):
        print("Epsilon")


# In[7]:


first('S')

