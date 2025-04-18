class BTNode {
  BTNode? left;
  BTNode? right;
  int value;

  BTNode({
    required this.value,
    this.left,
    this.right
  });

  void insertSorted(int value) {
    if(value < this.value) {
      if(left == null) {
        left = BTNode(value: value);
      } else {
        left!.insertSorted(value);
      }
    } else {
      if(right == null) {
        right = BTNode(value: value);
      } else {
        right!.insertSorted(value);
      }
    }
  }

  Iterable unroll() sync* {
    if(left != null) {
      yield* left!.unroll();
    }
    yield value;
    if(right != null) {
      yield* right!.unroll();
    }
  }

  BTNode? search(int value) {
    if(value == this.value) {
      return this;
    } else if(value < this.value) {
      if(left != null) {
        return left!.search(value);
      } else {
        return null;
      }
    } else {
      if(right != null) {
        return right!.search(value);
      } else {
        return null;
      }
    }
  }

  bool isPresent(int value) {
    return search(value) != null;
  }
}