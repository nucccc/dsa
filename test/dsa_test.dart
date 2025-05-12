import 'package:dsa/binary_tree.dart' as bt;
import 'package:dsa/dsa.dart';
import 'package:dsa/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('sorted_insertion_and_unroll', () {
    var root = bt.BTNode(value: 12);

    var elemsToInsert = [3,6,3,7,9,10,91,23,45,12,89,46];

    elemsToInsert.sort();

    //elemsToInsert

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

    final unrolled = root.unroll().toList();

    expect(unrolled, [1, 2, 3, 8, 9, 11, 12, 13, 14, 15, 17]);
  });

  test('sorted_insertion_and_unroll_fuzzed', () {
    var elemsToInsert = [3,6,3,7,9,10,91,23,45,12,89,46];
    var elemsSorted = List.from(elemsToInsert);
    elemsSorted.sort();

    for(var i = 0; i < 2000; i++) {
      elemsToInsert.shuffle();

      var root = bt.BTNode(value: elemsToInsert[0]);

      for (var elem in elemsToInsert.sublist(1)) {
        root.insertSorted(elem);
      }

      expect(elemsSorted, root.unroll().toList());
    }
  });

  test('test', () {
    ListNode root = push(null, 1);
    push(root, 2);
    push(root, 3);
    push(root, 4);

    expect([1,2,3,4], unroll(root).toList());
  });
}