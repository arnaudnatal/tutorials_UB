def estDiviseur(i,n):
    return n%i==0


def estPremier(n):
    for i in range(2,n):
        if estDiviseur(i,n)==True:
            return False
    return n>=2

estPremier(6)