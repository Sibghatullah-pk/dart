// // // void main(){
// // //     int num=5;
// // //     for(int i=1;i<=10;i++){
// // //       print("$num * $i = ${num*i}");
// // //     }   

// // // }

// // // void main(){
// // //     int num=12345;
// // //     int reverse=0;

// // //     while(num!=0){
// // //       int digit=num%10;
// // //       reverse=reverse*10+digit;
// // //       num=num~/10;
// // //     }
// // //     print("reverse number is $reverse");
// // // }

// // //palindrome Number
// // void main(){
// //     int num=121;
// //     int temp=num;
// //     int reverse=0;
// //     while(temp>0)
// //     {
// //         int digit=temp%10;
// //         reverse=reverse*10+digit;
// //         temp ~/=10;
// //     }
// //  if (num==reverse){
// //     print("$num is palindrome number");
// //  }
// //  else{
// //     print("$num is not palindrome number");
// //  }  

// // }

// void main(){
//     int num=28;
//     bool isPrime=true;

//     if(num<=1){
//         isPrime=false;
//     }
//     else{
//         for(int i=2;i<=num~/2;i++){
//             if(num%i==0){
//                 isPrime=false;
//                 break;
//             }
//         }
//     }
//     print("$num is prime number: $isPrime");
// }

void main() {
  int n = 4;

  // Increasing Triangle
  for (int i = 1; i <= n; i++) {
    print("*" * i);
  }
  // Decreasing Triangle
  for (int i = n-1; i >= 1; i--) {
    print("*" * i);
  }
}
