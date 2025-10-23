#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 11
#define NB_MSG 10

char tabl[NB_MSG][SIZE] = {"coucou !!", 
                           "bonjour..", 
                           "Hello! ;)", 
                           "ça va ?? ", 
                           "crypto <3", 
                           "4A -- STI", 
                           "I <3 info", 
                           "message  ", 
                           "secret ??", 
                           "exercice2"};

void key_gen(char * key, int size){
    int i = 0;
    for (i = 0; i < SIZE - 1; i ++){
        key[i] = 33 +(rand() % 92); // carractères affichables seulement 
        //key[i] = rand(); // tous les carractères
     }
     key[i] = '\0';
}

void Xor(char * x, char * y, char * z){
    // TODO
}

void encrypt(char * key, char * plain, char * cipher){
    // TODO
}

void decrypt(char * key, char * plain, char * cipher){
    // TODO
}

void generate_challenge(char * cipher_r, char * cipher_s){
     int r = rand() % NB_MSG;
     int s = rand() % NB_MSG;
     while (r == s)
         s = rand() % NB_MSG;
         
     char key[SIZE];
     key_gen(key, SIZE);

     encrypt(key, tabl[r], cipher_r);
     encrypt(key, tabl[s], cipher_s);
}

void attack(char * cipher_r, char * cipher_s){
    // TODO
}


int main(int argc, char *argv[]) {
    srand( time( NULL ) );
    
    char key[SIZE]; 
    key_gen(key, SIZE);
    
    char plain[SIZE]; // 
    printf("message à chiffrer :\n");
    scanf("%s", plain);
    
    char plainRes[SIZE];
    char cipher[SIZE];
    plainRes[0] = '\0';
    cipher[0] = '\0';
    
    encrypt(key, plain, cipher);
    decrypt(key, plainRes, cipher);
    
    printf("clé : %s\nMessage : %s\nChiffré : %s\nDéchiffré : %s\n", key, plain, cipher, plainRes);
    
    char cipher_r[SIZE];
    char cipher_s[SIZE];
    
    generate_challenge(cipher_r,cipher_s);
    attack(cipher_r,cipher_s);
}
