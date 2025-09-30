// // // // // // // // // // void main(){
// // // // // // // // // //     List<int> numbers =[5,10,2,4,5,8,1];
// // // // // // // // // //     int sum=0;
// // // // // // // // // //     print("numbers are $numbers");
// // // // // // // // // //     for(int number in numbers){
// // // // // // // // // //         sum+=number;
// // // // // // // // // //     }
// // // // // // // // // //     print("sum of all numbers is $sum");
// // // // // // // // // //     int max=numbers[0];
// // // // // // // // // //     for(int number in numbers){
// // // // // // // // // //         if(number>max){
// // // // // // // // // //             max=number;
// // // // // // // // // //         }
// // // // // // // // // //     }
// // // // // // // // // //     print("maximum number is $max");
// // // // // // // // // //     int min=numbers[0];
// // // // // // // // // //     for(int number in numbers){
// // // // // // // // // //         if(number<min){
// // // // // // // // // //             min=number;
// // // // // // // // // //         }
// // // // // // // // // //     }
// // // // // // // // // //     print("minimum number is $min");

// // // // // // // // // // }

// // // // // // // // // void main(){
// // // // // // // // //     List<int> numbers =[1,2,8,1,5];
// // // // // // // // //     int search=8;
// // // // // // // // //     bool found=false;
// // // // // // // // //     for(int number in numbers){
// // // // // // // // //         if(number==search){
// // // // // // // // //             found=true;
// // // // // // // // //             break;
// // // // // // // // //         }
// // // // // // // // //     }
// // // // // // // // //     if(found){
// // // // // // // // //         print("$search is found in the list");
// // // // // // // // //     }
// // // // // // // // //     else{
// // // // // // // // //         print("$search is not found in the list");
// // // // // // // // //     }
// // // // // // // // // }

// // // // // // // // void main(){
// // // // // // // //     List<int> numbers =[1,2,1,2,5];
// // // // // // // //     //duplicate
// // // // // // // //     List<int> duplicates=[];
// // // // // // // //     for(int i=0;i<numbers.length;i++){
// // // // // // // //         for(int j=i+1;j<numbers.length;j++){
// // // // // // // //             if(numbers[i]==numbers[j] && !duplicates.contains(numbers[i])){
// // // // // // // //                 duplicates.add(numbers[i]);
// // // // // // // //             }
// // // // // // // //         }
// // // // // // // //     }
// // // // // // // //     print("duplicate numbers are $duplicates");
// // // // // // // //     //unique
// // // // // // // //     List<int> unique=[];    
// // // // // // // //     for(int number in numbers){
// // // // // // // //         if(!unique.contains(number)){
// // // // // // // //             unique.add(number);
// // // // // // // //         }
// // // // // // // //     }
// // // // // // // //     print("unique numbers are $unique");
// // // // // // // // }

// // // // // // // void main(){
// // // // // // //     //string palindrome
// // // // // // //     String str="madam";
// // // // // // //     String reverse="";
// // // // // // //     for(int i=str.length-1;i>=0;i--){
// // // // // // //         reverse+=str[i];
// // // // // // //     }
// // // // // // //     if(str==reverse){
// // // // // // //         print("$str is palindrome");
// // // // // // //     }
// // // // // // //     else{
// // // // // // //         print("$str is not palindrome");
// // // // // // //     }
// // // // // // // }

// // // // // // //map example
// // // // // // void main(){
// // // // // //     Map<String,int> studentMarks={
// // // // // //         "Alice":85,
// // // // // //         "Bob":92,
// // // // // //         "Charlie":78,
// // // // // //         "David":90
// // // // // //     };
// // // // // //     print("student marks: $studentMarks");

// // // // // //     //average marks
// // // // // //     int total=0;
// // // // // //     for(int marks in studentMarks.values){
// // // // // //         total+=marks;
// // // // // //     }
// // // // // //     double average=total/studentMarks.length;
// // // // // //     print("average marks: $average");

// // // // // //     //highest marks
// // // // // //     String topStudent="";
// // // // // //     int highestMarks=0;
// // // // // //     studentMarks.forEach((student,marks) {
// // // // // //         if(marks>highestMarks){
// // // // // //             highestMarks=marks;
// // // // // //             topStudent=student;
// // // // // //         }
// // // // // //     });
// // // // // //     print("top student: $topStudent with marks $highestMarks");
// // // // // // }


// // // // // int globalVar = 100; // global variable

// // // // // void showNumber() {
// // // // //   int localVar = 50; // local variable
// // // // //   print("Local: $localVar, Global: $globalVar");
// // // // // }

// // // // void main() {
// // // //   showNumber();
// // // // }
// // // class Car{
// // //     String brand="Toyota";

// // // }
// // // void main(){
// // //     Car myCar=Car();
// // //     print(myCar.brand);
// // // }

// // // // class Calculator{
// // // //     int add(int a,int b)
// // // //     {
// // // //         return a+b;
// // // //     }
// // // // }
// // // // void main(){
// // // //     Calculator calc=Calculator();
// // // //     print("Sum= ${calc.add(10,5)}");
// // // // }


// // class Student{
// //     String name;
// //     int age;

// //     Student(this.name,this.age);

// // }
// // void main(){
// //     Student s1=Student("ALi",21);
// //     print("Student: ${s1.name}, Age: ${s1.age}");
// // }


// abstract class Animal{
//     void sound();
// }

// class Dog extends Animal{
//     @override
//     void sound(){
//         print("Dog barks");
//     }
// }
// class Cat extends Animal{
//     @override
//     void sound(){
//         print("Cat meaw");
//     }
// }
// void main(){
//     Dog d=Dog();
//     Cat c=Cat();
//     c.sound();
//     d.sound();
// }

