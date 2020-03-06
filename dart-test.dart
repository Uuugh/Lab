void main () {
   List myList = ['test', 'hello'];
  
  for (var i=0 ; i<10 ; i++) {
    print(i);
  }
  
  for (var m in myList) {
    print (m);
  }
  myList[1]="hi";
print ("The area is " + getArea(5,2).toString());
print ("The area is ${getArea(5,2).toString()}");
print (getArea(5));
print (getArea());
}

int  getArea([int length=1, int width=1]){
  return length * width;
}