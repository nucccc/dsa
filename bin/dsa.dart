import 'package:dsa/dsa.dart' as dsa;
import 'package:dsa/binary_tree.dart' as bt;

void main(List<String> arguments) {
  print('Hello world: ${dsa.calculate()}!');

  var root = bt.BTNode(value: 12);

  root.insertSorted(15);
  root.insertSorted(14);
  root.insertSorted(13);
  root.insertSorted(9);
  root.insertSorted(11);
  root.insertSorted(2);
  root.insertSorted(17);
  root.insertSorted(1);
  root.insertSorted(3);
  root.insertSorted(8);

  print(root.unroll().toList());

  print(root.isPresent(9));
  print(root.isPresent(16));
  print(root.isPresent(8));
  print(root.isPresent(7));
}
