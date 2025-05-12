class ListNode {
  final int value;
  ListNode? next;

  ListNode({
    required this.value
  });
}

ListNode push(ListNode? node, int value) {
  if(node == null) {
    return ListNode(value: value);
  }

  ListNode ex = node;
  while(ex.next != null) {
    ex = ex.next!;
  }
  ex.next = ListNode(value: value);

  return node;
}

Iterable<int> unroll(ListNode? node) sync* {
    while(node != null) {
      yield node.value;
      node = node.next;
    }
  }