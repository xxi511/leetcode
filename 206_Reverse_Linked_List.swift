// 1.97%
// naive answer
func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil {return nil}
    var arr = ContiguousArray<ListNode>()
    var current: ListNode? = head
    while current != nil {

        arr.append(current!)
        current = current?.next
    }

    for i in 0..<arr.count {
        let node = arr[arr.count-1-i]
        node.next = (i == arr.count-1) ? nil: arr[arr.count-2-i]
        print("A")
    }
    return arr.last!
}

// glance the best answer, 1.97%
// WT....
func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil {return nil}
    var cur: ListNode? = head
    var pre: ListNode? = head?.next
    cur?.next = nil
    while pre != nil {
        let tmp = pre?.next

        pre?.next = cur
        cur = pre
        pre = tmp
    }

    return cur
}

// best on leetcode
// No if
// less assign
func reverseList(_ head: ListNode?) -> ListNode? {
    var cur = head
    var pre: ListNode?
    while cur != nil {
        let next = cur?.next
        cur?.next = pre
        pre = cur
        cur = next
    }
    return pre
}
