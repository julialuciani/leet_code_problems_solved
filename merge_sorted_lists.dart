void main() {
  final sol = Solution();
  final list1 = ListNode(1, ListNode(2, ListNode(3)));
  final list2 = ListNode(1, ListNode(3, ListNode(4)));
  print(sol.mergeTwoLists(list1, list2));
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  List<int?> mergeTwoLists(ListNode? list1, ListNode? list2) {
    List<int?> newList = [
      list1?.val,
      list2?.val,
      list1?.next?.val,
      list2?.next?.val,
      list1?.next?.next?.val,
      list2?.next?.next?.val,
    ];
    return newList;
  }
}
