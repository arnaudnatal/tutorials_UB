# TD1 econometrics
# L3 eco
# Arnaud NATAL
# arnaud.natal@u-bordeaux.fr

##### 
# 1.
A<-1:12

# 2.
A<-c(A,26)
A

# 3.
B<-seq(-1,1.5,by=0.5)
B

# 4.
C<-seq(-2,16,by=2)
C

# 5.
D<-c(rep(1,3),rep(2,4),rep(5,2))
D

# 6.
E<-rep(c(4,6,3),3)
E

# 7.
F=rev(A)
F

# 8. 
G<-length(A)
G

# 9.
H<-rbind(D,E)
H

# 10.
I<-cbind(D,E)
I

# 11.
I<-diag(nrow=3)
I

# 12.
K<-matrix(data=c(-1,2,5,1,2,3,-2,8,10),nrow=3, byrow=TRUE)
K

# 13.
L<-solve(K)
L

# 14.
t(K)%*%K

# 15.
K[2,3]<-14

# 16.
A[A>6]

# 17.
A[A!=4]

# 18.
A[A==8]

# 19.
I[2,2]

# 20.
K[,3]