void main () {


  /// for loop in dart. starts from 1 and iterates to 5
  // for( initialization; condition; incrementation / decrementation)
  for(int i = 1; i <= 5; i++){
    print('Hello $i');
  }


  /// Multiplication using loop
  for (int i = 1; i <= 10; i++) {
    print('12 x $i = ${12*i}');
  }


  /// Using loop in list by index
  List students = ['Nazmul', 'Taufiq', 'Aminul'];
  // .length() gets the list length
  for(int i = 0; i < students.length; i++){
    print('${students[i]} has arrived in school');

  }

  /// Msg Offer
  List gpNumber = [
    '01779633440',
    '01778633451',
    '01776633460',
    '01771633470',
    '01772633480'
  ];

  for(int index = 0; index < gpNumber.length; index++){
    print('Offer 2 GB 7 days 10 Taka');
  }


  /// Storing the elements of the list in the initialized variable in each iteration
  for(var number in gpNumber){
    print('Offer 2 GB 7 days 10 Taka for you $number');
  }

  for(var student in students){
    print('$student take a chocolate');
  }


  /// Using loop in list of maps
  var orderList = [
    {'name' : 'Karim', 'amount' : 500, 'address' : 'Dhaka'},
    {'name' : 'Sohel', 'amount' : 800, 'address' : 'Mirpur'},
    {'name' : 'Piyas', 'amount' : 750, 'address' : 'Mirpur'},
    {'name' : 'Jojo', 'amount' : 400, 'address' : 'Mirpur'},
  ];

  // Declaring the value to store the sum
  int totalOrderAmount = 0;

  // iterates through the each list and stores each map in each iteration
  for(var order in orderList){
    // accesses the value with amount key and adds up and as int gets those value as integer
    // cause it is in num.
    totalOrderAmount += order['amount'] as int;
  }

  print('Today\'s total order amount : $totalOrderAmount');


  /// Using loop in sets pretty similar to list
  var names = {'Karim', 'Nazmul', 'Asif', 'Foyez'};

  for (String name in names) {
    print(name);
  }
}