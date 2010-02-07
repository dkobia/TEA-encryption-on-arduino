
unsigned int p [2] = {0xAABBCCDD, 0xAABBCCDE};
unsigned int k [4] = {0,2,3,4};
unsigned int c [2] = {0xE4A029D3, 0x517420C2};

void setup() {

  //Stuff goes here
  
}

void encrypt (unsigned int* v, unsigned int* k) {
    unsigned int v0=v[0], v1=v[1], sum=0, i;           /* set up */
    unsigned int delta=0x9e3779b9;                     /* a key schedule constant */
    unsigned int k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i < 32; i++) {                       /* basic cycle start */
        sum += delta;
        v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);  
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}
 

void loop()
{

  //Stuff goes here

}
