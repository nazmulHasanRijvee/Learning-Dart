void main () {


  /// While loop
  // initialization
  int i = 5;

  // condition
  while (i <= 10){
    print('print my index is $i');
    // incrementation or decrementation
    i++;
  }


  int spoon = 1;

  while(spoon <= 5) {
    print('rice $spoon spoon');
    spoon++;
  }


  /// Using while loop in list
  List students = ['Nazmul', 'Taufiq', 'Aminul'];

  int index = 0;
  // accesses the element by iterating the index of the list
  while(index < students.length) {
    print('Good morning ${students[index]}');
    index++;
  }


  /// Using while loop in list of maps
  var orderList = [
    {'name' : 'Karim', 'amount' : 500, 'address' : 'Taufiq'},
    {'name' : 'Sohel', 'amount' : 800, 'address' : 'Mirpur'},
    {'name' : 'Piyas', 'amount' : 750, 'address' : 'Mirpur'},
    {'name' : 'Jojo', 'amount' : 400, 'address' : 'Mirpur'},
  ];

  // Declaring the value to store the sum
  int totalOrderAmount = 0;
  // Declaring a variable for iterating through lists index
  int index2 = 0;
  // iterates through the each list and stores each map in each iteration
  while(index2 < orderList.length){
    // Storing the maps in a variable in each iteration
    var order = orderList[index2];
    // accesses the value with amount key and adds up and as int gets those value as integer
    // cause it is in num.
    totalOrderAmount += order['amount'] as int;
    // incrementation
    index2++;
  }

  print('Today\'s total order amount : $totalOrderAmount');


  /// Do while loop
  int j = 2;
  // Executes at least once even if condition is false
  do {
    print('Good night ${students[j]}');
    j++;
  }while( j < students.length);


}