#include <stdio.h>


int funcionQ(int n){
  if (n==1 || n==2 ){
    return 1;
  }
  else{
    return funcionQ(n-funcionQ(n-1))+funcionQ(n-funcionQ(n-2));
  }
}

int main(){
  int numero=4;
  printf("%d\n",funcionQ(numero));
  return 0;
}
