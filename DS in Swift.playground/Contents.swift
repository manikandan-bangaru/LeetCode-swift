

let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

print(stack.description)
stack.pop()
print("\n" + stack.description)
print(stack.description)


let a = TreeNode("A")
let b = TreeNode("B")
let c = TreeNode("C")
let d = TreeNode("D")
let e = TreeNode("E")
let f = TreeNode("F")

let b1 = TreeNode("B1")
let c1 = TreeNode("C1")
let d1 = TreeNode("D1")
let e1 = TreeNode("E1")
let f1 = TreeNode("F1")

a.add(b)
a.add(c)

b.add(d)
b.add(e)

d.add(f)
d.add(b1)

e.add(c1)
e.add(d1)

f.add(e1)
f.add(f1)

print("\n dfs Tree")
a.dfs()
print("\n level order Tree")
a.levelOrder{
    print($0.value)
}
if let result = a.search(value : "Z1"){
    print("\n found \(result)")
}else{
    print("\n Not found")
}

let binaryTree = BinaryNode(1)

let binaryTree2 = BinaryNode(2)

let binaryTree3 = BinaryNode(3)

let binaryTree4 = BinaryNode(4)

let binaryTree5 = BinaryNode(5)

binaryTree.left = binaryTree2

binaryTree.right = binaryTree3

binaryTree2.left = binaryTree4
binaryTree2.right = binaryTree5


print("Pre order Traversal")
binaryTree.inorderTraverse(){print($0.value)}
print("\nIn order Traversal")
binaryTree.preorderTraverse(){print($0.value)}

print("\n Level Order Traversal")
binaryTree.lvlorder(){
    print($0.value)
}

print("\n DFS in binary Tree")
binaryTree.dfs(){
    print($0.value)
}


// Binary Search Tree


let bst = BST<Int>()
bst.insert(1)
bst.insert(2)
bst.insert(3)
bst.insert(4)
bst.insert(5)
bst.insert(6)

print("-----BST -----")
bst.root?.lvlorder(){
    print($0.value)
}
var ar = [1,2,3,4]
ar.swapAt(0,1)

let char : Character = "a"
let ascii  = char.unicodeScalars.first?.value
print("Ascii")

print(ascii ?? 0)

let arr = [8,2,5,1,4,9,2]
Sort.quickSort(arr)


var heap = Heap<Int>(type  : .min)

heap.insert(node : 1)
heap.insert(node : 2)
heap.insert(node : 3)
heap.insert(node : 0)
heap.insert(node : 5)
heap.insert(node : 6)
heap.insert(node : 7)
heap.insert(node : 4)
heap.printAll()

heap.remove()
heap.remove()
print("remove at 2")
heap.removeAt(index : 1)
heap.printAll()
