def U(c,sigma=1):
    '''This function returns the value of utility when the CRRA
    coefficient is sigma. I.e. 
    u(c,sigma)=(c**(1-sigma)-1)/(1-sigma) if sigma!=1 
    and 
    u(c,sigma)=ln(c) if sigma==1
    Usage: u(c,sigma)
    '''
    if sigma!=1:
        u=(c**(1-sigma)-1)/(1-sigma)
    else:
        u=np.log(c)
    return u

def F(K,L=1,alpha=.3,A=1):
    '''
    Cobb-Douglas production function
    F(K,L)=K^alpha L^(1-alpha)
    '''
    return K**alpha * L**(1-alpha)

def Va(k,alpha=.3,beta=.9):
    ab=alpha*beta
    return np.log(1-ab)/(1-beta)+ab*np.log(ab)/((1-beta)*(1-ab))+alpha*np.log(k)/(1-ab)

def opk(k,alpha=.3,beta=.9):
    return alpha*beta*k**alpha

def opc(k,alpha=.3,beta=.9):
    return (1-alpha*beta)*k**alpha