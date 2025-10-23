#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 100

char * str = "LESUJETDECETPSERALETUDEDESCHIFFREMENTSDEBASE";

int key_gen(){
    return rand() % 26;
}

void encrypt(int key, char * plain, char * cipher){
    // TODO
}

void decrypt(int key, char * plain, char * cipher){
    // TODO
}

void generate_challenge(char * cipher){ 
    encrypt(key_gen(), str, cipher);
}

void attack(char * cipher){
    // TODO
}


int main(int argc, char *argv[]) {
    srand( time( NULL ) );
    int i;
    
    int key = key_gen();
    
    char plain[SIZE]; // Plaintext
    printf("message à chiffrer (en majuscules):\n");
    scanf("%s", plain);
    
    char plainRes[SIZE];
    char cipher[SIZE];
    plainRes[0] = '\0';
    cipher[0] = '\0';
    
    encrypt(key, plain, cipher); 
    decrypt(key, plainRes, cipher);
    
    printf("clé : %i\nMessage : %s\nChiffré : %s\nDéchiffré : %s\n", key, plain, cipher, plainRes);
    
    generate_challenge(cipher);
    attack(cipher);
}
