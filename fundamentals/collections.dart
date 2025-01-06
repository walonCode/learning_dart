//collections are sets,list,maps

main() {
  var list = [1, 2, 3];

  //spread operators allows you to add to list,set or map together
  var updateList = [0, ...list];
  print(updateList);

  var array = [];
  var updateArrray = ['name', ...array];
  print(updateArrray);

  var names = <String>['walon', 'Jalloh', 'Med'];
  print(names);
}
