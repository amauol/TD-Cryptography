def my_gcd(a, b):
    while(b != 0):
        tmp =b
        b = a%b
        a = tmp 
    return a

print(my_gcd(12,18)==gcd(12,18))

#exercice 11.a
def my_xgcd(a,b):
    if(b==0):
        return (a,1,0)
    else:
        (g,u,v) = my_xgcd(b, (a%b))
        return (g,v,u-(a//b)*v)

print(my_xgcd(12,18)[0]==gcd(12,18))

#exercice 11.b
def my_pow(x, e, n):
    y = 1
    while(e!=0):
        if((e%2)==1):
            y = (y*x)%n
        x = (x*x)%n
        e = e//2
    return y

print(my_pow(12,18,2)==pow(12,18,2))

#exercice 11.c
def my_is_prime(p):
    if p <= 1:
        return False
    for a in [2, 3, 5, 7]:
        if a >= p:
            continue
        if pow(a, p-1, p) != 1:
            return False
    return True


print(my_is_prime(18)==is_prime(18))

#exercice 11.d
def my_next_prime(n):
    if n <= 1:
        return 2
    p = n + 1
    while not my_is_prime(p):
        p += 1
    return p

print((my_next_prime(18))==next_prime(18))

#exercice 12
# import time

# def test_factor():
#     path = "/tmp/factor.dat"  # chemin sûr
#     with open(path, "w") as f:
#         l = 8
#         while l <= 111:
#             rq = randrange(2, 2**l)
#             q = next_prime(rq)
#             rp = randrange(2, 2**l)
#             p = next_prime(rp)
#             N = p * q

#             start = time.time()
#             factor(N)
#             stop = time.time()

#             elapsed = int((stop - start) * 10**6)  # µs
#             print(f"{l} {elapsed}")
#             f.write(f"{l} {elapsed}\n")
#             l += 1

#a
#La fonction génère deux nombres premiers, de taille l bits grâce à la fonction my_next_prime avec l allant de 8 à 111.
#On calcule leur produit avec N=p*q
#On mesure le temps nécessaire pour factoriser N
#On affiche le couple (l, temps nécessaire pour factoriser N en microsecondes) puis on augmente l de 1

#b
#voir factor.png 

#c
#On voit que pour les petites valeurs de l (entre 8 et 20), le temps de factorisation reste très faible. Ensuite, à partir de l ≈ 30, on commence à voir que les temps augmentent de façon non linéaire. On dirait que la croissance devient plus irrégulière, avec des pics à certains moments.

#Vers l = 60, les temps de calcul passent à plusieurs dizaines de milliers de microsecondes, et ça continue à grimper ensuite. À partir de l = 80, on dépasse les 100 000 µs, et ça devient exponentiel : à l = 100, on est dans les millions et à l = 111, on atteint plus de 20 millions, soit 20 secondes juste pour factoriser un seul N.

#Au final, on voit bien que plus N = p*q est grand, plus la factorisation devient difficile et longue.




#exercice 13.a
def rsa_gen(l):
    p = my_next_prime(randrange(2^(l-1), 2^l))
    q = my_next_prime(randrange(2^(l-1), 2^l))
    N = p * q
    phi = (p - 1) * (q - 1)

    e = randrange(2, phi)
    while(my_xgcd(e, phi)[0] != 1):
        e = randrange(2, phi)

    _, d, _ = my_xgcd(e, phi)
    d = d % phi

    return (e, N), d

#exercice 13.b
def rsa_enc(M, e, N):
    return my_pow(M, e, N)

#exercice 13.c
def rsa_dec(C, d, N):
    return my_pow(C, d, N)

#exercice 13.d
(e, N), d = rsa_gen(512)
print(e, N, d)
message = 123456789
cipher = rsa_enc(message, e, N)
decrypted = rsa_dec(cipher, d, N)

print("Message :", message)
print("Chiffré :", cipher)
print("Déchiffré :", decrypted)
print(message == decrypted)



