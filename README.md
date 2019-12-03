# CircularLinkedList
A circular linked list structure in swift


The functions it contains:

**Traverse** - Goes through one loop of the list

**Pop item** - Eliminates an item from the structure with out altering its form

**Add To Empty** - Adds a value when the list is empty

**Add To End** - Adds a value to the end of the list without loosing its structure

If you are using the version with turns:

**Retrieve Turn** - Returns data of current node

**Update Turn** - Updates current node with its next link

Examples of usage:


With **Turns**:
```swift
let circ = CircularLinkedList()
circ.addToEmptyList(data:2)
circ.addToListEnd(data:1)
circ.addToListEnd(data:4)
circ.traverse() //Will print the data of each node it traverses
print("turn player",circ.retrieveTurn())
circ.updateTurn()
print("turn player",circ.retrieveTurn())
circ.updateTurn()
print("turn player",circ.retrieveTurn())
circ.updateTurn()
print("turn player",circ.retrieveTurn())

```
Output:
```swift
2
1
4
turn player 2
turn player 1
turn player 4
turn player 2

```
With out:
```swift
let circ = CircularLinkedList()
circ.addToEmptyList(data:2)
circ.addToListEnd(data:1)
circ.addToListEnd(data:4)
circ.traverse() //Will print the data of each node it traverses
circ.popItem(data:1)
circ.traverse()
```
Output:
```swift
2
1
4
1 was deleted // result of the popItem function
2
4

```
- Stephan GF

