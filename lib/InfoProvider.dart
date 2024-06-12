import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/Favourites.dart';
import 'package:code_world/loading.dart';
import 'package:code_world/services/internet_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
class _InfoProviderState extends State<InfoProvider>{
  bool internetCheck = false;
@override
  void initState() {
    // TODO: implement initState
    InternetChecker().then((value)=>{
      setState(() {
        internetCheck = value;
      })
    });
    super.initState();
  }
  @override
  List data = [
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
  ];
  List topic=[
    "Header File",
    "Data type",
    "Variables",
    "Operators",
    "Specifiers",
    "Escape Sequence",
    "Control Statements",
    "Loops",
    "Typecasting",
    "Functions",
    "Array",
    "Pointers",
    "Calling",
    "Typedef",
    "Union",
    "Structure",
    "Singly Linked List",
    "Doubly Linked List",
    "Circular Linked List",
    "Stack",
    "Simple Queue",
    "Circular Queue",
    "Double Ended Queue",
    "Priority Queue",
    "Tree",
    "Graph",
    "Binary Tree",
    "Binary Search Tree",
    "AVL Tree",
    "Threaded Tree",
    "Dynamic Programming",
    "File Handling",
    "Backtracking",
    "Greedy Algorithms",
    "Hashing",
    "Heaps",
  ];
  bool loading = true;
  List definition = [
    {"definition" : "A header file is a file with extension .h which contains C function declarations and macro definitions to be shared between several source files."},
    {"definition" : "A data type specifies the type of data that a variable can store such as integer, floating, character, etc. "},
    {"definition" : "A variable is nothing but a name given to a storage area that our programs can manipulate. Each variable in C has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable "},
    {"definition" : "An operator is a symbol that operates on a value or a variable. "},
    {"definition" : "The format specifiers are used in C for input and output purposes. "},
    {"definition" : "An escape sequence in C language is a sequence of characters that doesn't represent itself when used inside string literal or character. "},
    {"definition" : "Control statements enable us to specify the flow of program control; ie, the order in which the instructions in a program must be executed. They make it possible to make decisions, to perform tasks repeatedly or to jump from one section of code to another. "},
    {"definition" : "In programming, a loop is used to repeat a block of code until the specified condition is met. "},
    {"definition" : "Type casting refers to changing an variable of one data type into another. The compiler will automatically change one type of data into another if it makes sense. For instance, if you assign an integer value to a floating-point variable, the compiler will convert the int to a float. "},
    {"definition" : "A function is a group of statements that together perform a task. "},
    {"definition" : "An array is a variable that can store multiple values of same datatype. "},
    {"definition" : "A pointer is a variable whose value is the address of another variable. "},
    {"definition" : "While creating a C function, you give a definition of what the function has to do. To use a function, you will have to call that function to perform the defined task. "},
    {"definition" : "The typedef is a keyword used in C programming to provide some meaningful names to the already existing variable in the C program. "},
    {"definition" : "Union is an user defined datatype in C programming language. It is a collection of variables of different datatypes in the same memory location.  "},
    {"definition" : "Structure is another user defined data type available in C that allows to combine data items of different kinds. "},
    {"definition": "A singly linked list is a linear data structure consisting of nodes where each node contains a data field and a reference (link) to the next node in the list."},
    {"definition": "Doubly linked list is a type of linked list in which each node apart from storing its data has two links. The first link points to the previous node in the list and the second link points to the next node in the list. The first node of the list has its previous link pointing to NULL similarly the last node of the list has its next node pointing to NULL."},
    {"definition": "Circular Linked List is a type of Linked list in which the first element points to the last element and the last element points to the first element. Each node contains a data field and a reference (link) to the next node in the list."},
    {"definition": "Stack is a linear data structure which follows either LIFO(Last In First Out) order or FILO(First In Last Out) order. Element can be inserted or deleted from the same end."},
    {"definition": "A Queue is a linear structure which follows First In First Out (FIFO) order. Insertion and deletion of elements in queue takes place from two different ends."},
    {"definition": "Circular Queue is a linear data structure in which the operations are performed based on FIFO (First In First Out) principle and the last position is connected back to the first position to make a circle. It is also called ‘Ring Buffer’. "},
    {"definition": "Deque or Double Ended Queue is a type of queue in which insertion and removal of elements can be performed from either from the front or rear. Thus, it does not follow FIFO rule (First In First Out)."},
    {"definition": "A priority queue is a special type of queue in which each element is associated with a priority and is served according to its priority. If elements with the same priority occur, they are served according to their order in the queue."},
    {"definition": "A tree is a nonlinear data structure which is a collection of nodes connected by directed (or undirected) edges."},
    {"definition": "A Graph is a non-linear data structure consisting of a finite set of vertices(or nodes) and set of Edges which connect a pair of nodes."},
    {"definition": "A type of tree whose elements have at most 2 children.",},
    {"definition": "A type of tree in which elements of the left subtree are smaller than the node element and elements of the right subtree are greater than the node element"},
    {"definition": "AVL tree is a self-balancing Binary Search Tree (BST) where the difference between heights of left and right subtrees cannot be more than one for all nodes."},
    {"definition": "A Threaded binary tree is a binary tree variant that facilitates traversal in a particular order."},
    {"definition": "Dynamic Programming (DP) is an algorithmic technique for solving an optimization problem by breaking it down into simpler subproblems and utilizing the fact that the optimal solution to the overall problem depends upon the optimal solution to its subproblems."},
    {"definition": "File handling in C enables us to create, update, read, and delete the files stored on the local file system through our C program."},
    {"definition": "Backtracking is an algorithmic-technique for solving problems recursively by trying to build a solution incrementally, one piece at a time, removing those solutions that fail to satisfy the constraints of the problem at any point of time."},
    {"definition": "The Greedy Algorithm makes the optimal choice at each step as it attempts to find the overall optimal way to solve the entire problem."},
    {"definition": "Hashing is the process of converting a given key into another value. A hash function is used to generate the new value according to a mathematical algorithm. The result of a hash function is known as a hash value or a hash."},
    {"definition": "A Heap is a special Tree-based data structure in which the tree is a complete binary tree."},
];

  List example = [
    {"example":'#include <file> or #include "file"'},
    {"example":"Basic Data Type:- int, char, float, double\nDerived Data Type:- array, pointer, structure, union\nEnumeration Data Type:- enum\nVoid Data Type:- void"},
    {"example":"int    i, j, k;\nchar   c, ch;\nfloat  f, salary;\ndouble d;"},
    {"example":"Arithmetic Operators:- +,-,*,/,%\nIncrement and Decrement Operators:- ++,--\nAssignment Operators:- =,+=,-=,*=,/=,%=\nRelational Operators:- ==,>,<,!=,>=,<=\nLogical Operators:- &&,||,!\nBitwise Operators:- &,|,^,~,<<,>> "},
    {"example":"Format Specifiers:- %c,%d,%f,%l,%lf"},
    {"example":"\\n represents new line\n\\b represent backspace"},
    {"example":" if,else, Nested if-else,switch-case,conditional operator Statement,goto"},
    {"example":" for, while, do-while loop"},
    {"example":"(data_type)expression;"},
    {"example":"return_type function_name(){Statements}"},
    {"example":"dataType arrayName[arraySize];"},
    {"example":"dataType *var-name;"},
    {"example":"call by value:- return_type func_name(data_type var_name){}\n calling by reference:- return_type func_name(data_type *var_name){}"},
    {"example":"typedef <existing_name> <alias_name>"},
    {"example":"union Data {\nint i;\nfloat f;\nchar str[20];\n};"},
    {"example":"struct Books {\nchar  title[50];\nchar  author[50];\nchar  subject[100];\nint   book_id;\n};"},
    {"example": "struct Node\n{ int data;\n struct Node *next;\n};"},
    {"example": "struct Node {\nint data;\nstruct Node* next; // Pointer to next node in DLL\nstruct Node* prev; // Pointer to previous node in DLL\n};"},
    {"example": "struct node{\nint data;\nstruct node *next;\n};"},
    {"example": "Stack can be implemented in two ways:\n1.	By Array\n#define MAX 10\nstruct stack{\nint items[MAX];\nint top;\n};\ntypedef struct stack st;\n2.	By Linked List\nstruct Node{\nint data;\nstruct Node* link;\n};\nstruct Node* top;"},
    {"example": "Queue can be implemented in two ways:\n\n1.	By Array\n#define MAX 50\nint queue_array[MAX];\nint rear = - 1;\nint front = - 1;\n\n2.	By Linked List\nstruct node {\nint data;\nstruct node *next;\n};\nstruct node *front;\nstruct node *rear;"},
    {"example": "Circular Queue can be implemented in two ways:\n\n1.	By Array\n#define MAX 50\nint queue_array[MAX];\nint rear = - 1;\nint front = - 1;\n\n2.	By Linked List\nstruct node {\nint data;\nstruct node *next;\n};\nstruct node *front;\nstruct node *rear;"},
    {"example": "struct Deque\n{\nint  arr[MAX];\nint  front;\nint  rear;\nint  size;\n};"},
    {"example": "Using Array:\nstruct item{\nint item;\nint priority;\n};"},
    {"example": "struct node\n{\nint data;\nstruct node *left;\nstruct node *right;\n}"},
    {"example": "// Data structure to store a graph object\nstruct Graph{\nstruct Node* head[N];\n};\n\n// Data structure to store adjacency list nodes of the graph\nstruct Node{\nint dest;\nstruct Node* next;\n};\n\n// Data structure to store a graph edge\nstruct Edge{\nint src, dest;\n};"},
    {"example":"struct node\n{\nint data;\nstruct node* left;\nstruct node* right;\n};"},
    {"example":"If node == NULL\nreturn createNode(data)\nif (data < node->data)\nnode->left  = insert(node->left, data);\nelse if (data > node->data)\nnode->right = insert(node->right, data);\nreturn node;"},
    {"example":"struct Node\n{\nint key;\nstruct Node *left;\nstruct Node *right;\nint height;\n};"},
    {"example": "struct Node{\nint data;\nstruct Node *left, *right;\nbool rightThread;\n}"},
    {"example":"Ugly numbers\nFibonacci numbers\nnth Catalan Number\nBell Numbers (Number of ways to Partition a Set)\nBinomial Coefficient"},
    {"example":"Types of Files\n\nWhen dealing with files, there are two types of files you should know about:\n\nText files\nBinary files"},
    {"example":"Puzzles such as eight queens puzzle, crosswords, verbal arithmetic, Sudoku, and Peg Solitaire can be solved using backtracking"},
    {"example":"Prim's Minimal Spanning Tree Algorithm.\nTravelling Salesman Problem.\nGraph - Map Coloring.\nKruskal's Minimal Spanning Tree Algorithm.\nDijkstra's Minimal Spanning Tree Algorithm.\nGraph - Vertex Cover.\nKnapsack Problem.\nJob Scheduling Problem."},
    {"example":"insert (key, value)\nget (key)\ndelete (key)"},
    {"example":" if is the parent node of , then the value of follows a specific order with respect to the value of and the same order will be followed across the tree."},

  ];
  List information = [
    {"info": "There are two types of header files: the files that the programmer writes and the files that comes with your compiler.\nYou request to use a header file in your program by including it with the C preprocessing directive #include, like you have seen inclusion of stdio.h header file, which comes along with your compiler."},
    {"info": "Int:- The amount of memory that a single int takes depends on the hardware. However, you can expect an int to be at least 16 bits in size.\n\nChar:- char holds characters- things like letters, punctuation, and spaces. In a computer, characters are stored as numbers, so char holds integer values that represent characters.\n\nFloat:- float takes at least 32 bits to store, but gives us 6 decimal places from 1.2E-38 to 3.4E+38.\n\nDouble:-double takes double the memory of float (so at least 64 bits). In return, double can provide 15 decimal place from 2.3E-308 to 1.7E+308.\n\nVoid:- The void type specifies that no value is available."},
    {"info": "A variable declaration provides assurance to the compiler that there exists a variable with the given type and name so that the compiler can proceed for further compilation without requiring the complete detail about the variable. A variable definition has its meaning at the time of compilation only, the compiler needs actual variable definition at the time of linking the program."},
    {"info": "Arithmetic Operators\nAn arithmetic operator performs mathematical operations such as addition, subtraction, multiplication, division etc on numerical values (constants and variables).\n\nIncrement and Decrement Operators\nC programming has two operators increment ++ and decrement -- to change the value of an operand (constant or variable) by 1.\n\nAssignment Operators\nAn assignment operator is used for assigning a value to a variable. The most common assignment operator is =.\n\nRelational Operators\nA relational operator checks the relationship between two operands. If the relation is true, it returns 1; if the relation is false, it returns value 0.\n\nLogical Operators\nAn expression containing logical operator returns either 0 or 1 depending upon whether expression results true or false. Logical operators are commonly used in decision making in C programming.\n\nBitwise Operators\nBitwise operators are used in C programming to perform bit-level operations."},
    {"info": "Using this concept the compiler can understand that what type of data is in a variable during taking input using the scanf() function and printing using printf() function."},
    {"info": 'All escape sequences consist of two or more characters, the first of which is the backslash, \\ (called the "Escape character"), the remaining characters determine the interpretation of the escape sequence. '},
    {"info": "The control flows from one instruction to the next instruction until now in all programs. This control flow from one command to the next is called sequential control flow. Nonetheless, in most C programs the programmer may want to skip instructions or repeat a set of instructions repeatedly when writing logic. This can be referred to as sequential control flow. The declarations in C let programmers make such decisions which are called decision-making or control declarations. Below we will discuss the types of Control Statements in C."},
    {"info": "when a block of code needs to be executed several number of times. In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.\n\nProgramming languages provide various control structures that allow for more complicated execution paths."},
    {"info": "Sequence in which type-casting can be achieve is:-\nbool -> char -> short int -> int -> unsigned int -> long -> unsigned -> long long -> float -> double -> long double"},
    {"info": "You can divide up your code into separate functions. How you divide up your code among different functions is up to you, but logically the division is such that each function performs a specific task.\nA function declaration tells the compiler about a function's name, return type, and parameters. A function definition provides the actual body of the function.\nThe C standard library provides numerous built-in functions that your program can call. For example, strcat() to concatenate two strings, memcpy() to copy one memory location to another location, and many more functions."},
    {"info": "An array is a collection of data items, all of the same type, accessed using a common name. A one-dimensional array is like a list; A two dimensional array is like a table; The C language places no limits on the number of dimensions in an array, though specific implementations may."},
    {"info": "Pointers have many but easy concepts and they are very important to C programming. The following important pointer concepts should be clear to any C programmer-\n\nPointer arithmetic\nThere are four arithmetic operators that can be used in pointers: ++, --, +, -\n\nArray of pointers\nYou can define arrays to hold a number of pointers.\n\nPointer to pointer\nC allows you to have pointer on a pointer and so on.\n\nPassing pointers to functions in C\nPassing an argument by reference or by address enable the passed argument to be changed in the calling function by the called function.\n\nReturn pointer from functions in C\nC allows a function to return a pointer to the local variable, static variable, and dynamically allocated memory as well."},
    {"info": "Well if the function does not have any arguments, then to call a function you can directly use its name. But for functions with arguments, we can call a function in two different ways, based on how we specify the arguments, and these two ways are:\n\nCall by Value\nCalling a function by value means, we pass the values of the arguments which are stored or copied into the formal parameters of the function. Hence, the original values are unchanged only the parameters inside the function changes.\n\nCall by Reference\nIn call by reference we pass the address(reference) of a variable as argument to any function. When we pass the address of any variable as argument, then the function will have access to our variable, as it now knows where it is stored and hence can easily update its value."},
    {"info": "In the above syntax, 'existing_name' is the name of an already existing variable while 'alias name' is another name given to the existing variable.\nSuppose we want to create a variable of type unsigned int, then it becomes a tedious task if we want to declare multiple variables of this type. To overcome the problem, we use a typedef keyword.\ntypedef unsigned int unit;\nunit a, b;"},
    {"info": "We can define a union with many members, but only one member can contain a value at any given time. Unions provide an efficient way of using the same memory location for multiple-purpose.\n\nDefining a Union\nTo define a union, you must use the union statement in the same way as you did while defining a structure. The union statement defines a new data type with more than one member for your program."},
    {"info": "In C, there are cases where we need to store multiple attributes of an entity. It is not necessary that an entity has all the information of one type only. It can have different attributes of different data types. For example, an entity Student may have its name (string), roll number (int), marks (float). To store such type of information regarding an entity student, we have the following approaches:\nConstruct individual arrays for storing names, roll numbers, and marks.\nUse a special data structure to store the collection of different data types."},
    {"info": "Memory allocation is dynamic ie, you don't need to provide size of the linked list beforehand. A singly linked list can be traversed only in one direction.\n\nAddress of the first node is contained in a head pointer and reference of the last node contains NULL value.\n\nOperations that can be performed on Singly Linked List are:\n1. Node Creation\n2. Insertion at the beginning\n3. Insertion at end of the list\n4. Insertion after specified node\n5. Deletion at beginning\n6. Deletion at the end of the list\n7. Deletion after specified node\n8. Traversing\n9. Searching"},
    {"info": "Memory allocation is dynamic ie, you don't need to provide size of the linked list beforehand. A singly linked list can be traversed in both directions.\nOperations that can be performed on Doubly Linked List are:\n1. Node Creation\n2. Insertion at the beginning\n3. Insertion at end of the list\n4. Insertion after specified node\n5. Deletion at beginning\n6. Deletion at the end of the list\n7. Deletion after specified node\n8. Traversing\n9. Searching"},
    {"info": "We traverse a circular singly linked list until we reach the same node where we started. The circular singly liked list has no beginning and no ending. There is no null value present in the next part of any of the nodes. Circular linked list are mostly used in task maintenance in operating systems."},
    {"info": "We maintain a pointer called top to the last pushed element on the stack. The top pointer provides top value of the stack without actually removing it.\n\nOperations performed on Stack are:\n1.	push() − Pushing (storing) an element on the stack.\n2.	pop() − Removing (accessing) an element from the stack.\n3.	peek() − get the top data element of the stack, without removing it.\n4.	isFull() − check if stack is full.\n5.	isEmpty() − check if stack is empty.\n\nFor both array-based and linked list implementation of a stack, the push and pop operations take constant time, i.e. O(1)."},
    {"info": "In queue, we always dequeue (or access) data, pointed by front pointer and while enqueing (or storing) data in the queue we take help of rear pointer.\nThe difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.\n\nOperations performed on Queue are:\n1.	enqueue() − add (store) an item to the queue.\n2.	dequeue() − remove (access) an item from the queue.\n.	peek() − Gets the element at the front of the queue without removing it.\n4.	isfull() − Checks if the queue is full.\n5.	isempty() − Checks if the queue is empty.\nThe complexity of enqueue and dequeue operations in a queue using an array is O(1)."},
    {"info": "Operations on Circular Queue:\n\n1. Front: Get the front item from queue.\n2. Rear: Get the last item from queue.\n3. enQueue(value) This function is used to insert an element into the circular queue. In a circular queue, the new element is always inserted at Rear position.\n  1. Check whether queue is Full – Check ((rear == SIZE-1 && front == 0) || (rear == front-1)).\n  2. If it is full then display Queue is full. If queue is not full then, check if (rear == SIZE – 1 && front != 0) if it is true then set rear=0 and insert element.\n4. deQueue() This function is used to delete an element from the circular queue. In a circular queue, the element is always deleted from front position.\n  1. Check whether queue is Empty means check (front==-1).\n  2. If it is empty then display Queue is empty. If queue is not empty then step 3\n  3. Check if (front==rear) if it is true then set front=rear= -1 else check if (front==size-1), if it is true then set front=0 and return the element."},
    {"info": "The following are the operations applied on deque:\n\n1.	Insert at front\n2.	Delete from end\n3.	insert at rear\n4.	delete from rear\n5.	isFull(): This function returns a true value if the stack is full; otherwise, it returns a false value.\n6.	isEmpty(): This function returns a true value if the stack is empty; otherwise it returns a false value.The deque can be used as a stack and queue; therefore, it can perform both redo and undo operations."},
    {"info": "Some operations\n1. Inserting an element\n2. Deleting an element\n3. Peek\n\nCharacteristics:\n1.Every element in a priority queue has some priority associated with it.\n2.An element with the higher priority will be deleted before the deletion of the lesser priority.\n3.If two elements in a priority queue have the same priority, they will be arranged using the FIFO principle."},
    {"info": "Tree offers an efficient search and insertion procedure.Some of the tree terminologies are:\nNode: A node is an entity that contains a key or value and pointers to its child nodes. The last nodes of each path are called leaf nodes or external nodes that do not contain a link/pointer to child nodes.\nThe node having at least a child node is called an internal node.\n\nRoot\nIt is the topmost node of a tree.\n\nHeight of a Node\nThe height of a node is the number of edges from the node to the deepest leaf (ie. the longest path from the node to a leaf node).\n\nDepth of a Node\nThe depth of a node is the number of edges from the root to the node.\n\nHeight of a Tree\nThe height of a Tree is the height of the root node or the depth of the deepest node.\n\nDegree of a Node\nThe degree of a node is the total number of branches of that node.\n\nThere are many types of tree like:\n1.	General Tree\n2.	Binary Tree\n3.	Binary Search Tree\n4.	AVL Tree\n5.	Red-Black Tree\n6.	N-ary Tree\n\nA tree can be traversed in majorly 3 ways:\n1.	Inorder: (Left node, Root node, Right node)\n2.	Preorder: (Root node, Left node, Right node)\n3.	Postorder: (Left node, Right node, Root node)"},
    {"info": "Some of the Graph terminologies are:\nVertex − Each node of the graph is represented as a vertex.\ndge − Edge represents a path between two vertices or a line between two vertices.\nAdjacency − Two nodes or vertices are adjacent if they are connected to each other through an edge.\nPath − Path represents a sequence of edges between the two vertices.\n\nFollowing are basic primary operations of a Graph−\nAdd Vertex − Adds a vertex to the graph.\nAdd Edge − Adds an edge between the two vertices of the graph.\nDisplay Vertex − Displays a vertex of the graph.\n\nGraph can be represented in two ways:\n1. Adjacency Matrix\n2. Adjacency List\n\nGraph can be traversed in 2 ways:\n1. DFS (Depth First Search)\n2. BFS (Breadth-First Search)"},
    {"info": "Types of Binary Tree\n1.Full/Proper/Strict Binary Tree\n2.Complete Binary Tree\n3.Perfect Binary Tree\n4.Degenerate Binary Tree\n5.Balanced Binary Tree"},
    {"info": "Searching become very efficient in a binary search tree since, we get a hint at each step, about which sub-tree contains the desired element.\n\nOperations on Binary Search Tree\n1.Searching\n2.Insertion\n3.Deletion\n\n"},
    {"info": "Tree is said to be balanced if balance factor of each node is in between -1 to 1, otherwise, the tree will be unbalanced and need to be balanced.\nBalance Factor (k) = height (left(k)) - height (right(k))\n\nAVL Rotations\n1.L L rotation: Node is added in the left subtree of left subtree of tree.\n2.R R rotation: Inserted node is in the right subtree of right subtree of tree\n3.L R rotation : Inserted node is in the right subtree of left subtree of tree\n4.R L rotation : Inserted node is in the left subtree of right subtree of tree"},
    {"info": "The idea of threaded binary trees is to make inorder traversal faster and do it without stack and without recursion.\n\nIt has two types:\n1.Single Threaded: Where a NULL right pointers is made to point to the inorder successor (if successor exists)\n2.Double Threaded: Where both left and right NULL pointers are made to point to inorder predecessor and inorder successor respectively. The predecessor threads are useful for reverse inorder traversal and postorder traversal."},
    {"info": "Dynamic programming can be used in both top-down and bottom-up manner.\nIt use Memoization to remember the output of already solved sub-problems.\n\nSome problems that can be solved using dynamic programming approach:\nFibonacci number series\nKnapsack problem\nTower of Hanoi\nAll pair shortest path by Floyd-Warshall\nShortest path by Dijkstra\nProject scheduling"},
    {"info": "The following operations can be performed on a file.\n1.Creation of the new file\n2.Opening an existing file\n3.Reading from the file\n4.Writing to the file\n5.Deleting the file\n\nFunctions for file handling:\n1.fopen():opens new or existing file\n2.fprintf():write data into the file\n3.fscanf():reads data from the file\n4.fclose():closes the file\n5.fseek():sets the file pointer to given position"},
    {"info": "In backtracking, we use recursion to explore all the possibilities until we get the best result for the problem.\n\nThere are three types of problems in backtracking:\n1.Decision Problem - We search for a feasible solution\n2.Optimization Problem – We search for the best solution.\n3.Enumeration Problem – We find all feasible solutions."},
    {"info": "If both of the properties below are true, a greedy algorithm can be used to solve the problem.\n1.Greedy choice property: A global (overall) optimal solution can be reached by choosing the optimal choice at each step.\n2.Optimal substructure: A problem has an optimal substructure if an optimal solution to the entire problem contains the optimal solutions to the sub-problems."},
    {"info": "Hashing uses Hash Table which stores data in an associative manner. In a hash table, data is stored in an array format, where each data value has its own unique index value. Access of data becomes very fast if we know the index of the desired data.Thus, it becomes a data structure in which insertion and search operations are very fast irrespective of the size of the data. Hash Table uses an array as a storage medium and uses hash technique to generate an index where an element is to be inserted or is to be located from."},
    {"info": "Heaps can be of two types:\nMax-Heap: In a Max-Heap the key present at the root node must be greatest among the keys present at all of it’s children. The same property must be recursively true for all sub-trees in that Binary Tree.\nMin-Heap: In a Min-Heap the key present at the root node must be minimum among the keys present at all of it’s children. The same property must be recursively true for all sub-trees in that Binary Tree."},
  ];
  List url=["https://youtu.be/v7nPeFgLqZs",
    "https://youtu.be/NyT9vvSBoeo",
    "https://youtu.be/dhh5lrXXXYw",
    "https://youtu.be/E1_Gg6dURwk",
    "https://youtu.be/g_4YwXthsdI",
    "https://youtu.be/WXTVvXErH9s",
    "https://youtu.be/oYuRtXcwXqw",
    "https://youtu.be/BpeIfof3VBk",
    "https://youtu.be/zM25fFXkTzc",
    "https://youtu.be/TxWKGhF9KdM",
    "https://youtu.be/Bnjbun-hiBk",
    "https://youtu.be/IBjGjDbwxSg",
    "https://youtu.be/6R0jNW6j2NA",
    "https://youtu.be/sxQ4hRHLVAc",
    "https://youtu.be/C3zS6WPxHPY",
    "https://youtu.be/J464pe6ZTrE",
    "https://youtu.be/6wXZ_m3SbEs",
    "https://youtu.be/nquQ_fYGGA4",
    "https://youtu.be/fmfx1C4TTxw",
    "https://youtu.be/bxRVz8zklWM",
    "https://youtu.be/YqrFeU90Coo",
    "https://youtu.be/dn01XST9-bI",
    "https://youtu.be/pqg0SOPRlJ4",
    "https://youtu.be/joX93VhNlRo",
    "https://youtu.be/YAdLFsTG70w",
    "https://youtu.be/5hPfm_uqXmw",
    "https://youtu.be/6vt3PFRC11E",
    "https://youtu.be/cySVml6e_Fc",
    "https://youtu.be/YWqla0UX-38",
    "https://youtu.be/0acUMN82RmU",
    "https://youtu.be/lVR2u9lsxl8",
    "https://youtu.be/qg69AXmHhx8",
    "https://youtu.be/S3rnLLHl0PM",
    "https://youtu.be/ARvQcqJ_-NY",
    "https://youtu.be/W5q0xgxmRd8",
    "https://youtu.be/NEtwJASLU8Q",];


List output=[
  '''
  Using math.h, The value is : 4096
Using stdlib.h, the string to long int : 53875
Using string.h, the strings s2 and s3 : World World
  ''',
  '''
  Hello World!
Hello! I am a character. My value is G and my size is 1 byte.
Hello! I am an integer. My value is 1 and my size is 4  bytes.
Hello! I am a double floating point variable. My value is 3.140000 and my size i
s 8 bytes.
Bye! See you soon. :)
  ''',
  '''
  Sum is : 21
  ''',
  '''
  a+b = 13
a-b = 5
a*b = 36
a/b = 2
Remainder when a divided by b=1
  ''',
  '''
  B
45
90
12.670000
1.267000e+001
103
43
Hello World
Hello World
Hello World
Hello
Hello
  ''',
  '''
  My mobile number is 7873923408.
  ''',
  '''
  Enter a number:4
4 is even number
  ''',
  '''
  0
1
3
6
10
15
21
28
36
45
  ''',
  '''
  x = 107, z = 108.000000
  ''',
  '''
  Hello Javatpoint
  ''',
  '''
  80
60
70
85
75
  ''',
  '''
  Address of number variable is fff4
Address of p variable is fff4
Value of p variable is 50
  ''',
  '''
  Welcome to the JavaTpoint.com
It is the library function or built-in function in C
  ''',
  '''
  Book  title : C Programming
Book  author : Nuha Ali
Book  subject : C Programming Tutorial
Book  book_id : 6495407
  ''',
  '''
  Memory size occupied by data : 20
  ''',
  '''
  x = 20, y = 1
  ''',
  '''
  Enter the item which you want to insert?
12

Node inserted

Press 0 to insert more ?
0

Enter the item which you want to insert?
23

Node inserted

Press 0 to insert more ?
2
  ''',
  '''
   Created DLL is:
Traversal in forward direction
 1  7  8  6  4
Traversal in reverse direction
 4  6  8  7  1
  ''',
  '''Original List:
  [ (6,56) (5,40) (4,1) (3,30) (2,20) ]
  Deleted value:(6,56)
  Deleted value:(5,40)
  Deleted value:(4,1)
  Deleted value:(3,30)
  Deleted value:(2,20)
  Deleted value:(1,10)
  List after deleting all items:
  [ ]''',
  '''
  Element at top of the stack: 15
Elements:
15
12
1 
9 
5 
3 
Stack full: false
Stack empty: true
  ''',
  '''
  Queue is full!
Element removed: 3
Element at front: 5
----------------------
index : 5 4 3 2 1 0
----------------------
Queue: 5 9 1 12 15 16
  ''',
  '''
  Queue is empty !! 

Inserted -> 1
 Inserted -> 2
 Inserted -> 3
 Inserted -> 4
 Inserted -> 5
 Queue is full!! 

 Front -> 0 
 Items -> 1 2 3 4 5 
 Rear -> 4 

 Deleted element -> 1 

 Front -> 1 
 Items -> 2 3 4 5 
 Rear -> 4 

 Inserted -> 7
 Front -> 1 
 Items -> 2 3 4 5 7 
 Rear -> 0 

  ''',
  '''
  Elements in a deque: \n front:    8  5  12  5  11  6  0  0  0  0  :rear\nremoved item: 8\nElements in a deque after deletion: \n front:    0  5  12  5  11  6  0  0  0  0  :rear\nElements in a deque after addition: \n front:    0  5  12  5  11  6  16  7  0  0  :rear\nremoved item: 7\nElements in a deque after deletion: \n front:    0  5  12  5  11  6  16  0  0  0  :rear\nTotal number of elements in deque: 6
  ''',
  '''
  16
  12
  ''',
  '''
  Visiting elements: 27 35 [31] Element found.
Visiting elements: 27 14 19 [ x ] Element not found (15).

Preorder traversal: 27 14 10 19 35 31 42 
Inorder traversal: 10 14 19 27 31 35 42 
Post order traversal: 10 19 14 31 42 35 27
  ''',
  ''' Adjacency list of vertex 0
 head -> 1-> 4

 Adjacency list of vertex 1
 head -> 0-> 2-> 3-> 4

 Adjacency list of vertex 2
 head -> 1-> 3

 Adjacency list of vertex 3
 head -> 1-> 2-> 4

 Adjacency list of vertex 4
 head -> 0-> 1-> 3''',
  '''
  Pre Order Display
9
4
2
6
15
12
17
In Order Display
2
4
6
9
12
15
17
Post Order Display
2
6
4
12
17
15
9
Searched node=4
  ''',
  '''
  Enter data:5
  Do you want to enter more(y/n)?y
  Enter data:10
  Do you want to enter more(y/n)?y
  Enter data:13
  Do you want to enter more(y/n)?y
  Enter data:2
  Do you want to enter more(y/n)?y
  Enter data:3
  Do you want to enter more(y/n)?n
  Preorder Traversal: 5 2 3 10 13
  
  ''',
  '''
   Preorder traversal of the constructed AVL tree is
  30 20 10 25 40 50
  ''',
  '''
  5 \n10 \n13 \n14 \n16 \n17 \n20 \n30 
  '''
];


  List code =[
    '''
#include <stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>

int main() {
   char s1[20] = "53875";
   char s2[10] = "Hello";
   char s3[10] = "World";
   int res;

   res = pow(8, 4);
   printf("Using math.h, The value is : %d\\n", res);

   long int a = atol(s1);
   printf("Using stdlib.h, the string to long int : %d\\n", a);
   
   strcpy(s2, s3);
   printf("Using string.h, the strings s2 and s3 : %s\\t%s\\n", s2, s3 );

   return 0;
}
 ''',
    '''
    #include <stdio.h>
int main()
{
    int a = 1;
    char b = 'G';
    double c = 3.14;
    printf("Hello World!\\n");
 
    printf("Hello! I am a character. My value is %c and "
           "my size is %lu byte.\\n",
           b, sizeof(char));
 
    printf("Hello! I am an integer. My value is %d and "
           "my size is %lu  bytes.\\n",
           a, sizeof(int));
 
    printf("Hello! I am a double floating point variable."
           " My value is %lf and my size is %lu bytes.\\n",
           c, sizeof(double));
 
    printf("Bye! See you soon. :)\\n");
 
    return 0;
}
''',
    '''
    int main () {

    int a, b;
 
    a = 7;
    b = 14;
    c = a + b;
    printf("Sum is : %d \\n", c);
    
    return 0;
}
    ''',
    '''
    #include <stdio.h>
int main()
{
    int a = 9,b = 4, c;
    
    c = a+b;
    printf("a+b = %d \\n",c);
    c = a-b;
    printf("a-b = %d \\n",c);
    c = a*b;
    printf("a*b = %d \\n",c);
    c = a/b;
    printf("a/b = %d \\n",c);
    c = a%b;
    printf("Remainder when a divided by b = %d \n",c);
    
    return 0;
}
    ''',
  '''
     #include <stdio.h>
  main() {
    char ch = 'B';
    printf("%c\\n", ch);
    int x = 45, y = 90;
    printf("%d\\n", x);
    printf("%i\\n", y);
    float f = 12.67;
    printf("%f\\n", f); 
    printf("%e\\n", f); 
    int a = 67;
    printf("%o\\n", a); 
    printf("%x\n", a); 
    char str[] = "Hello World";
    printf("%s\\n", str);
    printf("%20s\\n", str); 
    printf("%-20s\\n", str); 
    printf("%20.5s\\n", str); 
    printf("%-20.5s\\n", str); 
  }
    ''',
    '''
    #include <stdio.h>
int main(void)
{
    printf("My mobile number "
          "is 7\\a8\\a7\\a3\\a9\\a2\\a3\\a4\\a0\\a8\\a");
    return (0);
}
    ''',
    '''
    #include<stdio.h>    
int main(){    
int number=0;    
printf("Enter a number:");    
scanf("%d",&number);    
if(number%2==0){    
printf("%d is even number",number);    
}    
return 0;  
}    
    ''',
    '''
    #include <stdio.h>

int main() {
  
  int sum =0;
  for(int a=0;a<10;a++){
    sum= sum+a;
    printf("%d\\n",sum);
  }
}
    ''',
    '''
    #include<stdio.h>
int main()
{
    int x = 10;    
    char y = 'a';  
  
    x = x + y;
    float z = x + 1.0;
  
    printf("x = %d, z = %f", x, z);
    return 0;
}
    ''',
    '''
    #include<stdio.h>  
void printName();  
void main ()  
{  
    printf("Hello ");  
    printName();  
}  
void printName()  
{  
    printf("Javatpoint");  
}  
    ''',
    '''
    #include<stdio.h>  
int main(){      
int i=0;    
int marks[5];      
marks[0]=80;   
marks[1]=60;    
marks[2]=70;    
marks[3]=85;    
marks[4]=75;    
for(i=0;i<5;i++){      
printf("%d \\n",marks[i]);    
}  
return 0;  
}    
    ''',
    '''
    #include<stdio.h>  
int main(){  
int number=50;    
int *p;      
p=&number; 
printf("Address of p variable is %x \\n",p);      
printf("Value of p variable is %d \\n",*p); 
return 0;  
}    
    ''',
    '''
    #include <conio.h>   
void main()   
{  
printf( " Welcome to the JavaTpoint.com ");   
printf("\\n It is the library or built-in function in C ");   
getch();
}  
    ''',
    '''
    #include <stdio.h>
#include <string.h>
 
typedef struct Books {
   char title[50];
   char author[50];
   char subject[100];
   int book_id;
} Book;
 
int main( ) {

   Book book;
 
   strcpy( book.title, "C Programming");
   strcpy( book.author, "Nuha Ali"); 
   strcpy( book.subject, "C Programming Tutorial");
   book.book_id = 6495407;
 
   printf( "Book title : %s\\n", book.title);
   printf( "Book author : %s\\n", book.author);
   printf( "Book subject : %s\\n", book.subject);
   printf( "Book book_id : %d\\n", book.book_id);

   return 0;
}
    ''',
    '''
    #include <stdio.h>
#include <string.h>
 
union Data {
   int i;
   float f;
   char str[20];
};
 
int main( ) {

   union Data data;        

   printf( "Memory size occupied by data : %d\n", sizeof(data));

   return 0;
}
    ''',
    '''
    #include<stdio.h>
  
struct Point
{
   int x, y;
};
  
int main()
{
   struct Point p1 = {0, 1};
  
   p1.x = 20;
   printf ("x = %d, y = %d", p1.x, p1.y);
  
   return 0;
}
    ''',
    '''
    #include<stdio.h>  
#include<stdlib.h>  
void beginsert(int);  
struct node  
{  
    int data;  
    struct node *next;  
};  
struct node *head;  
void main ()  
{  
    int choice,item;  
    do   
    {  
        printf("\\nEnter the item which you want to insert?\\n");  
        scanf("%d",&item);  
        beginsert(item);  
        printf("\\nPress 0 to insert more ?\\n");  
        scanf("%d",&choice);  
    }while(choice == 0);  
}  
void beginsert(int item)  
    {  
        struct node *ptr = (struct node *)malloc(sizeof(struct node *));  
        if(ptr == NULL)  
        {  
            printf("\\nOVERFLOW\\n");  
        }  
        else  
        {  
            ptr->data = item;  
            ptr->next = head;  
            head = ptr;  
            printf("\\nNode inserted\\n");  
        }  
          
    }  
    ''',
    '''
    #include <stdio.h>
#include <stdlib.h>
 
struct Node {
    int data;
    struct Node* next;
    struct Node* prev;
};
  
void push(struct Node** head_ref, int new_data)
{
    struct Node* new_node
        = (struct Node*)malloc(sizeof(struct Node));

    new_node->data = new_data;

    new_node->next = (*head_ref);
    new_node->prev = NULL;

    if ((*head_ref) != NULL)
        (*head_ref)->prev = new_node;

    (*head_ref) = new_node;
}
  
void insertAfter(struct Node* prev_node, int new_data)
{
    if (prev_node == NULL) {
        printf("the given previous node cannot be NULL");
        return;
    }
  
    struct Node* new_node
        = (struct Node*)malloc(sizeof(struct Node));
  
    new_node->data = new_data;
  
    new_node->next = prev_node->next;
  
    prev_node->next = new_node;
  
    new_node->prev = prev_node;
  
    if (new_node->next != NULL)
        new_node->next->prev = new_node;
}

void append(struct Node** head_ref, int new_data)
{
    struct Node* new_node
        = (struct Node*)malloc(sizeof(struct Node));
  
    struct Node* last = *head_ref; 

    new_node->data = new_data;

    new_node->next = NULL;

          node as head */
    if (*head_ref == NULL) {
        new_node->prev = NULL;
        *head_ref = new_node;
        return;
    }
  
    while (last->next != NULL)
        last = last->next;
  
    last->next = new_node;

    new_node->prev = last;
  
    return;
}
  

void printList(struct Node* node)
{
    struct Node* last;
    printf("\\nTraversal in forward direction \\n");
    while (node != NULL) {
        printf(" %d ", node->data);
        last = node;
        node = node->next;
    }
  
    printf("\\nTraversal in reverse direction \\n");
    while (last != NULL) {
        printf(" %d ", last->data);
        last = last->prev;
    }
}

int main()
{
    struct Node* head = NULL;

    append(&head, 6);
 
    push(&head, 7);
    push(&head, 1);

    append(&head, 4);

    insertAfter(head->next, 8);
  
    printf("Created DLL is: ");
    printList(head);
  
    getchar();
    return 0;
}
    ''',
'''
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

struct node {
   int data;
   int key;
	
   struct node *next;
};

struct node *head = NULL;
struct node *current = NULL;

bool isEmpty() {
   return head == NULL;
}

int length() {
   int length = 0;

   if(head == NULL) {
      return 0;
   }

   current = head->next;

   while(current != head) {
      length++;
      current = current->next;   
   }
	
   return length;
}

void insertFirst(int key, int data) {

   struct node *link = (struct node*) malloc(sizeof(struct node));
   link->key = key;
   link->data = data;
	
   if (isEmpty()) {
      head = link;
      head->next = head;
   } else {
      link->next = head;
      
      head = link;
   }    
}

struct node * deleteFirst() {

   struct node *tempLink = head;
	
   if(head->next == head) {  
      head = NULL;
      return tempLink;
   }     
   head = head->next;
	
   return tempLink;
}

void printList() {

   struct node *ptr = head;
   printf("\\n[ ");
	
   if(head != NULL) {
	
      while(ptr->next != ptr) {     
         printf("(%d,%d) ",ptr->key,ptr->data);
         ptr = ptr->next;
      }
   }
	
   printf(" ]");
}

void main() {
   insertFirst(1,10);
   insertFirst(2,20);
   insertFirst(3,30);
   insertFirst(4,1);
   insertFirst(5,40);
   insertFirst(6,56); 

   printf("Original List: "); 
	
   printList();

   while(!isEmpty()) {            
      struct node *temp = deleteFirst();
      printf("\\nDeleted value:");  
      printf("(%d,%d) ",temp->key,temp->data);
   }   
	
   printf("\\nList after deleting all items: ");
   printList();   
}
''',
    '''
    #include <stdio.h>

int MAXSIZE = 8;       
int stack[8];     
int top = -1;            

int isempty() {

   if(top == -1)
      return 1;
   else
      return 0;
}
   
int isfull() {

   if(top == MAXSIZE)
      return 1;
   else
      return 0;
}

int peek() {
   return stack[top];
}

int pop() {
   int data;
	
   if(!isempty()) {
      data = stack[top];
      top = top - 1;   
      return data;
   } else {
      printf("Could not retrieve data, Stack is empty.\\n");
   }
}

int push(int data) {

   if(!isfull()) {
      top = top + 1;   
      stack[top] = data;
   } else {
      printf("Could not insert data, Stack is full.\\n");
   }
}

int main() {
   push(3);
   push(5);
   push(9);
   push(1);
   push(12);
   push(15);

   printf("Element at top of the stack: %d\\n" ,peek());
   printf("Elements: \\n");

   while(!isempty()) {
      int data = pop();
      printf("%d\\n",data);
   }

   printf("Stack full: %s\\n" , isfull()?"true":"false");
   printf("Stack empty: %s\\n" , isempty()?"true":"false");
   
   return 0;
}
    ''',
    '''
    #include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#define MAX 6

int intArray[MAX];
int front = 0;
int rear = -1;
int itemCount = 0;

int peek() {
   return intArray[front];
}

bool isEmpty() {
   return itemCount == 0;
}

bool isFull() {
   return itemCount == MAX;
}

int size() {
   return itemCount;
}  

void insert(int data) {

   if(!isFull()) {
	
      if(rear == MAX-1) {
         rear = -1;            
      }       

      intArray[++rear] = data;
      itemCount++;
   }
}

int removeData() {
   int data = intArray[front++];
	
   if(front == MAX) {
      front = 0;
   }
	
   itemCount--;
   return data;  
}

int main() {
   insert(3);
   insert(5);
   insert(9);
   insert(1);
   insert(12);

   insert(15);


	
   if(isFull()) {
      printf("Queue is full!\\n");   
   }

   int num = removeData();
	
   printf("Element removed: %d\\n",num);

   insert(16);

   insert(17);
   insert(18);

   printf("Element at front: %d\\n",peek());

   printf("----------------------\\n");
   printf("index : 5 4 3 2  1  0\\n");
   printf("----------------------\\n");
   printf("Queue:  ");
	
   while(!isEmpty()) {
      int n = removeData();           
      printf("%d ",n);
   }   
}
    ''',
    '''
    #include <stdio.h>

#define SIZE 5

int items[SIZE];
int front = -1, rear = -1;

int isFull() {
  if ((front == rear + 1) || (front == 0 && rear == SIZE - 1)) return 1;
  return 0;
}

int isEmpty() {
  if (front == -1) return 1;
  return 0;
}

void enQueue(int element) {
  if (isFull())
    printf("\\n Queue is full!! \\n");
  else {
    if (front == -1) front = 0;
    rear = (rear + 1) % SIZE;
    items[rear] = element;
    printf("\\n Inserted -> %d", element);
  }
}

int deQueue() {
  int element;
  if (isEmpty()) {
    printf("\\n Queue is empty !! \\n");
    return (-1);
  } else {
    element = items[front];
    if (front == rear) {
      front = -1;
      rear = -1;
    } 
    else {
      front = (front + 1) % SIZE;
    }
    printf("\\n Deleted element -> %d \\n", element);
    return (element);
  }
}

void display() {
  int i;
  if (isEmpty())
    printf(" \\n Empty Queue\\n");
  else {
    printf("\\n Front -> %d ", front);
    printf("\\n Items -> ");
    for (i = front; i != rear; i = (i + 1) % SIZE) {
      printf("%d ", items[i]);
    }
    printf("%d ", items[i]);
    printf("\\n Rear -> %d \\n", rear);
  }
}

int main() {
  deQueue();

  enQueue(1);
  enQueue(2);
  enQueue(3);
  enQueue(4);
  enQueue(5);

  enQueue(6);

  display();
  deQueue();

  display();

  enQueue(7);
  display();

  enQueue(8);

  return 0;
}
    ''',
    '''

#include <stdio.h>

#define MAX 10

void addFront(int *, int, int *, int *);
void addRear(int *, int, int *, int *);
int delFront(int *, int *, int *);
int delRear(int *, int *, int *);
void display(int *);
int count(int *);

int main() {
  int arr[MAX];
  int front, rear, i, n;

  front = rear = -1;
  for (i = 0; i < MAX; i++)
    arr[i] = 0;

  addRear(arr, 5, &front, &rear);
  addFront(arr, 12, &front, &rear);
  addRear(arr, 11, &front, &rear);
  addFront(arr, 5, &front, &rear);
  addRear(arr, 6, &front, &rear);
  addFront(arr, 8, &front, &rear);

  printf("\\nElements in a deque: ");
  display(arr);

  i = delFront(arr, &front, &rear);
  printf("\\nremoved item: %d", i);

  printf("\\nElements in a deque after deletion: ");
  display(arr);

  addRear(arr, 16, &front, &rear);
  addRear(arr, 7, &front, &rear);

  printf("\\nElements in a deque after addition: ");
  display(arr);

  i = delRear(arr, &front, &rear);
  printf("\\nremoved item: %d", i);

  printf("\\nElements in a deque after deletion: ");
  display(arr);

  n = count(arr);
  printf("\\nTotal number of elements in deque: %d", n);
}

void addFront(int *arr, int item, int *pfront, int *prear) {
  int i, k, c;

  if (*pfront == 0 && *prear == MAX - 1) {
    printf("\\nDeque is full.\\n");
    return;
  }

  if (*pfront == -1) {
    *pfront = *prear = 0;
    arr[*pfront] = item;
    return;
  }

  if (*prear != MAX - 1) {
    c = count(arr);
    k = *prear + 1;
    for (i = 1; i <= c; i++) {
      arr[k] = arr[k - 1];
      k--;
    }
    arr[k] = item;
    *pfront = k;
    (*prear)++;
  } else {
    (*pfront)--;
    arr[*pfront] = item;
  }
}

void addRear(int *arr, int item, int *pfront, int *prear) {
  int i, k;

  if (*pfront == 0 && *prear == MAX - 1) {
    printf("\\nDeque is full.\\n");
    return;
  }

  if (*pfront == -1) {
    *prear = *pfront = 0;
    arr[*prear] = item;
    return;
  }

  if (*prear == MAX - 1) {
    k = *pfront - 1;
    for (i = *pfront - 1; i < *prear; i++) {
      k = i;
      if (k == MAX - 1)
        arr[k] = 0;
      else
        arr[k] = arr[i + 1];
    }
    (*prear)--;
    (*pfront)--;
  }
  (*prear)++;
  arr[*prear] = item;
}

int delFront(int *arr, int *pfront, int *prear) {
  int item;

  if (*pfront == -1) {
    printf("\\nDeque is empty.\\n");
    return 0;
  }

  item = arr[*pfront];
  arr[*pfront] = 0;

  if (*pfront == *prear)
    *pfront = *prear = -1;
  else
    (*pfront)++;

  return item;
}

int delRear(int *arr, int *pfront, int *prear) {
  int item;

  if (*pfront == -1) {
    printf("\\nDeque is empty.\\n");
    return 0;
  }

  item = arr[*prear];
  arr[*prear] = 0;
  (*prear)--;
  if (*prear == -1)
    *pfront = -1;
  return item;
}

void display(int *arr) {
  int i;

  printf("\\n front:  ");
  for (i = 0; i < MAX; i++)
    printf("  %d", arr[i]);
  printf("  :rear");
}

int count(int *arr) {
  int c = 0, i;

  for (i = 0; i < MAX; i++) {
    if (arr[i] != 0)
      c++;
  }
  return c;
}
    ''',
    '''
    #include <stdio.h>
 
struct item {
    int value;
    int priority;
};
 
item pr[100000];
 
int size = -1;
 
void enqueue(int value, int priority)
{
    size++;
 
    pr[size].value = value;
    pr[size].priority = priority;
}
 
int peek()
{
    int highestPriority = INT_MIN;
    int ind = -1;
    for (int i = 0; i <= size; i++) {
 
        if (highestPriority
                == pr[i].priority
            && ind > -1
            && pr[ind].value
                   > pr[i].value) {
            highestPriority = pr[i].priority;
            ind = i;
        }
        else if (highestPriority
                 < pr[i].priority) {
            highestPriority = pr[i].priority;
            ind = i;
        }
    }
    return ind;
}
 
void dequeue()
{
    int ind = peek();
 
    for (int i = ind; i < size; i++) {
        pr[i] = pr[i + 1];
    }
 
    size--;
}
 
int main()
{
    enqueue(10, 2);
    enqueue(14, 2);
    enqueue(16, 4);
    enqueue(12, 3);
 
    int ind = peek();
 printf("%d",&pr[ind].value);
 
    dequeue();
 
    ind = peek();
    printf("%d",&pr[ind].value);
 
    return 0;
}
    ''',
    '''
    #include <stdio.h>
#include <stdlib.h>

struct node {
   int data; 
	
   struct node *leftChild;
   struct node *rightChild;
};

struct node *root = NULL;

void insert(int data) {
   struct node *tempNode = (struct node*) malloc(sizeof(struct node));
   struct node *current;
   struct node *parent;

   tempNode->data = data;
   tempNode->leftChild = NULL;
   tempNode->rightChild = NULL;

   if(root == NULL) {
      root = tempNode;
   } else {
      current = root;
      parent = NULL;

      while(1) { 
         parent = current;
         
         if(data < parent->data) {
            current = current->leftChild;                
            
            if(current == NULL) {
               parent->leftChild = tempNode;
               return;
            }
         else {
            current = current->rightChild;

            if(current == NULL) {
               parent->rightChild = tempNode;
               return;
            }
         }
      }            
   }
}

struct node* search(int data) {
   struct node *current = root;
   printf("Visiting elements: ");

   while(current->data != data) {
      if(current != NULL)
         printf("%d ",current->data); 

      if(current->data > data) {
         current = current->leftChild;
      }
      else {                
         current = current->rightChild;
      }

      if(current == NULL) {
         return NULL;
      }
   }
   
   return current;
}

void pre_order_traversal(struct node* root) {
   if(root != NULL) {
      printf("%d ",root->data);
      pre_order_traversal(root->leftChild);
      pre_order_traversal(root->rightChild);
   }
}

void inorder_traversal(struct node* root) {
   if(root != NULL) {
      inorder_traversal(root->leftChild);
      printf("%d ",root->data);          
      inorder_traversal(root->rightChild);
   }
}

void post_order_traversal(struct node* root) {
   if(root != NULL) {
      post_order_traversal(root->leftChild);
      post_order_traversal(root->rightChild);
      printf("%d ", root->data);
   }
}

int main() {
   int i;
   int array[7] = { 27, 14, 35, 10, 19, 31, 42 };

   for(i = 0; i < 7; i++)
      insert(array[i]);

   i = 31;
   struct node * temp = search(i);

   if(temp != NULL) {
      printf("[%d] Element found.", temp->data);
      printf("\\n");
   }else {
      printf("[ x ] Element not found (%d).\\n", i);
   }

   i = 15;
   temp = search(i);

   if(temp != NULL) {
      printf("[%d] Element found.", temp->data);
      printf("\\n");
   }else {
      printf("[ x ] Element not found (%d).\\n", i);
   }            

   printf("\\nPreorder traversal: ");
   pre_order_traversal(root);

   printf("\\nInorder traversal: ");
   inorder_traversal(root);

   printf("\\nPost order traversal: ");
   post_order_traversal(root);       

   return 0;
}
    ''',
    '''
    #include <stdio.h>
#include <stdlib.h>
 
struct AdjListNode
{
    int dest;
    struct AdjListNode* next;
};
 
struct AdjList
{
    struct AdjListNode *head;
};
 
struct Graph
{
    int V;
    struct AdjList* array;
};
 
struct AdjListNode* newAdjListNode(int dest)
{
    struct AdjListNode* newNode =
     (struct AdjListNode*) malloc(sizeof(struct AdjListNode));
    newNode->dest = dest;
    newNode->next = NULL;
    return newNode;
}
 
struct Graph* createGraph(int V)
{
    struct Graph* graph =
        (struct Graph*) malloc(sizeof(struct Graph));
    graph->V = V;
 
    graph->array =
      (struct AdjList*) malloc(V * sizeof(struct AdjList));
 
    int i;
    for (i = 0; i < V; ++i)
        graph->array[i].head = NULL;
 
    return graph;
}
 
void addEdge(struct Graph* graph, int src, int dest)
{
    struct AdjListNode* newNode = newAdjListNode(dest);
    newNode->next = graph->array[src].head;
    graph->array[src].head = newNode;
 
    newNode = newAdjListNode(src);
    newNode->next = graph->array[dest].head;
    graph->array[dest].head = newNode;
}
 
void printGraph(struct Graph* graph)
{
    int v;
    for (v = 0; v < graph->V; ++v)
    {
        struct AdjListNode* pCrawl = graph->array[v].head;
        printf("\\n Adjacency list of vertex %d\n head ", v);
        while (pCrawl)
        {
            printf("-> %d", pCrawl->dest);
            pCrawl = pCrawl->next;
        }
        printf("\\n");
    }
}
 
int main()
{
    int V = 5;
    struct Graph* graph = createGraph(V);
    addEdge(graph, 0, 1);
    addEdge(graph, 0, 4);
    addEdge(graph, 1, 2);
    addEdge(graph, 1, 3);
    addEdge(graph, 1, 4);
    addEdge(graph, 2, 3);
    addEdge(graph, 3, 4);
 
    printGraph(graph);
 
    return 0;
}''',
    '''
    #include<stdlib.h>
#include<stdio.h>

struct bin_tree {
int data;
struct bin_tree * right, * left;
};
typedef struct bin_tree node;

void insert(node ** tree, int val)
{
    node *temp = NULL;
    if(!(*tree))
    {
        temp = (node *)malloc(sizeof(node));
        temp->left = temp->right = NULL;
        temp->data = val;
        *tree = temp;
        return;
    }

    if(val < (*tree)->data)
    {
        insert(&(*tree)->left, val);
    }
    else if(val > (*tree)->data)
    {
        insert(&(*tree)->right, val);
    }

}

void print_preorder(node * tree)
{
    if (tree)
    {
        printf("%d\n",tree->data);
        print_preorder(tree->left);
        print_preorder(tree->right);
    }

}

void print_inorder(node * tree)
{
    if (tree)
    {
        print_inorder(tree->left);
        printf("%d\\n",tree->data);
        print_inorder(tree->right);
    }
}

void print_postorder(node * tree)
{
    if (tree)
    {
        print_postorder(tree->left);
        print_postorder(tree->right);
        printf("%d\\n",tree->data);
    }
}

void deltree(node * tree)
{
    if (tree)
    {
        deltree(tree->left);
        deltree(tree->right);
        free(tree);
    }
}

node* search(node ** tree, int val)
{
    if(!(*tree))
    {
        return NULL;
    }

    if(val < (*tree)->data)
    {
        search(&((*tree)->left), val);
    }
    else if(val > (*tree)->data)
    {
        search(&((*tree)->right), val);
    }
    else if(val == (*tree)->data)
    {
        return *tree;
    }
}

void main()
{
    node *root;
    node *tmp;

    root = NULL;
    insert(&root, 9);
    insert(&root, 4);
    insert(&root, 15);
    insert(&root, 6);
    insert(&root, 12);
    insert(&root, 17);
    insert(&root, 2);

    printf("Pre Order Display\\n");
    print_preorder(root);

    printf("In Order Display\\n");
    print_inorder(root);

    printf("Post Order Display\\n");
    print_postorder(root);

    tmp = search(&root, 4);
    if (tmp)
    {
        printf("Searched node=%d\\n", tmp->data);
    }
    else
    {
        printf("Data Not found in tree.\\n");
    }

    deltree(root);
}
    ''',
    '''
    #include<stdio.h>
#include<stdlib.h>
 
typedef struct BST
{
int data;
struct BST *left;
struct BST *right;
}node;
 
node *create();
void insert(node *,node *);
void preorder(node *);
 
int main()
{
char ch;
node *root=NULL,*temp;
do
{
temp=create();
if(root==NULL)
root=temp;
else
insert(root,temp);
printf("nDo you want to enter more(y/n)?");
getchar();
scanf("%c",&ch);
}while(ch=='y'|ch=='Y');
printf("nPreorder Traversal: ");
preorder(root);
return 0;
}
 
node *create()
{
node *temp;
printf("nEnter data:");
temp=(node*)malloc(sizeof(node));
scanf("%d",&temp->data);
temp->left=temp->right=NULL;
return temp;
}
 
void insert(node *root,node *temp)
{
if(temp->data<root->data)
{
if(root->left!=NULL)
insert(root->left,temp);
else
root->left=temp;
}
if(temp->data>root->data)
{
if(root->right!=NULL)
insert(root->right,temp);
else
root->right=temp;
}
}
 
void preorder(node *root)
{
if(root!=NULL)
{
printf("%d ",root->data);
preorder(root->left);
preorder(root->right);
}
}
    ''',    '''
    #include<stdio.h>
#include<stdlib.h>
 
struct Node
{
    int key;
    struct Node *left;
    struct Node *right;
    int height;
};
 
int max(int a, int b);
 
int height(struct Node *N)
{
    if (N == NULL)
        return 0;
    return N->height;
}
 
int max(int a, int b)
{
    return (a > b)? a : b;
}
 
struct Node* newNode(int key)
{
    struct Node* node = (struct Node*)
                        malloc(sizeof(struct Node));
    node->key   = key;
    node->left   = NULL;
    node->right  = NULL;
    node->height = 1; 
    return(node);
}
 
struct Node *rightRotate(struct Node *y)
{
    struct Node *x = y->left;
    struct Node *T2 = x->right;
 
    x->right = y;
    y->left = T2;
 
    y->height = max(height(y->left), height(y->right))+1;
    x->height = max(height(x->left), height(x->right))+1;
 
    return x;
}
 
struct Node *leftRotate(struct Node *x)
{
    struct Node *y = x->right;
    struct Node *T2 = y->left;
 
    y->left = x;
    x->right = T2;
 
    x->height = max(height(x->left), height(x->right))+1;
    y->height = max(height(y->left), height(y->right))+1;
 
    return y;
}
 
int getBalance(struct Node *N)
{
    if (N == NULL)
        return 0;
    return height(N->left) - height(N->right);
}

struct Node* insert(struct Node* node, int key)
{
    if (node == NULL)
        return(newNode(key));
 
    if (key < node->key)
        node->left  = insert(node->left, key);
    else if (key > node->key)
        node->right = insert(node->right, key);
    else 
        return node;
 
    node->height = 1 + max(height(node->left),
                           height(node->right));
 

    int balance = getBalance(node);
 
 
    if (balance > 1 && key < node->left->key)
        return rightRotate(node);
 
    if (balance < -1 && key > node->right->key)
        return leftRotate(node);
 
    if (balance > 1 && key > node->left->key)
    {
        node->left =  leftRotate(node->left);
        return rightRotate(node);
    }
 
    if (balance < -1 && key < node->right->key)
    {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }
 
    return node;
}

void preOrder(struct Node *root)
{
    if(root != NULL)
    {
        printf("%d ", root->key);
        preOrder(root->left);
        preOrder(root->right);
    }
}
 
int main()
{
  struct Node *root = NULL;
 
  root = insert(root, 10);
  root = insert(root, 20);
  root = insert(root, 30);
  root = insert(root, 40);
  root = insert(root, 50);
  root = insert(root, 25);
 
 
  printf("Preorder traversal of the constructed AVL"
         " tree is \\n");
  preOrder(root);
 
  return 0;
}
    ''',
    '''
     #include<stdio.h>
     #include<stlib.h>
struct Node
{
    struct Node *left, *right;
    int info;
 
    bool lthread;
 
    bool rthread;
};
 
struct Node *insert(struct Node *root, int ikey)
{
    Node *ptr = root;
    Node *par = NULL;
    while (ptr != NULL)
    {
        if (ikey == (ptr->info))
        {
            printf("Duplicate Key !\\n");
            return root;
        }
 
        par = ptr;
        if (ikey < ptr->info)
        {
            if (ptr -> lthread == false)
                ptr = ptr -> left;
            else
                break;
        }
        else
        {
            if (ptr->rthread == false)
                ptr = ptr -> right;
            else
                break;
        }
    }
 
    Node *tmp = new Node;
    tmp -> info = ikey;
    tmp -> lthread = true;
    tmp -> rthread = true;
 
    if (par == NULL)
    {
        root = tmp;
        tmp -> left = NULL;
        tmp -> right = NULL;
    }
    else if (ikey < (par -> info))
    {
        tmp -> left = par -> left;
        tmp -> right = par;
        par -> lthread = false;
        par -> left = tmp;
    }
    else
    {
        tmp -> left = par;
        tmp -> right = par -> right;
        par -> rthread = false;
        par -> right = tmp;
    }
 
    return root;
}
 
struct Node *inorderSuccessor(struct Node *ptr)
{
    if (ptr -> rthread == true)
        return ptr->right;
 
    ptr = ptr -> right;
    while (ptr -> lthread == false)
        ptr = ptr -> left;
    return ptr;
}
void inorder(struct Node *root)
{
    if (root == NULL)
        printf("Tree is empty");
 
    struct Node *ptr = root;
    while (ptr -> lthread == false)
        ptr = ptr -> left;
 
    while (ptr != NULL)
    {
        printf("%d ",ptr -> info);
        ptr = inorderSuccessor(ptr);
    }
}
 
int main()
{
    struct Node *root = NULL;
 
    root = insert(root, 20);
    root = insert(root, 10);
    root = insert(root, 30);
    root = insert(root, 5);
    root = insert(root, 16);
    root = insert(root, 14);
    root = insert(root, 17);
    root = insert(root, 13);
 
    inorder(root);
 
    return 0;
}
    '''
  ];

  List check=[];
  String? Name;
  int? index;


  _launchURLBrowser() async {
     String UrlTemp = url[index!];
    if (await canLaunch(UrlTemp)) {
      await launch(UrlTemp);
    } else {
      throw 'Could not launch $url';
    }
  }


  Widget build(BuildContext context) {


    final  height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    SettingSharedPrefs();
    listBuilder ()async{
      final firestoreInstance = FirebaseFirestore.instance;
      var firebaseUser = FirebaseAuth.instance.currentUser;
      firestoreInstance.collection("userInfo").doc(firebaseUser!.uid).get().then((value){
        if(value.data()!["list"].contains(Name)==true){

          firestoreInstance.collection("userInfo")
              .doc(firebaseUser.uid)
              .update({

            "list": FieldValue.arrayRemove([Name]),
          }).then((_) => print("Success"));
        }else{
          firestoreInstance.collection("userInfo")
              .doc(firebaseUser.uid)
              .update({
            "list": FieldValue.arrayUnion([Name]),
          }).then((_) => print("Success"));
        }
      });
    }

    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("userInfo").doc(firebaseUser!.uid).get().then((value){
     
      setState(() {
        check = value.data()!["list"];
        loading = false;
      });});

    @override
    Widget buildShareButton()=> FloatingActionButton(
        child:(!check.contains((topic[index!])))?Icon(
          Icons.favorite_border,
          color: Colors.white, size: 30,
        ):Icon(Icons.favorite,
          color: Colors.white,size: 30,),
        shape:RoundedRectangleBorder( borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
            topRight: Radius.circular(35)),
        ),
        backgroundColor: data[index!]["color"],

        onPressed: (){
          listBuilder();
          setState(() {
            Name = topic[index!];
            print(check.contains((topic[index!])));
          });
        },
    );
    return internetCheck == false ?AdvanceCustomAlertInternet():loading?Loading():Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },),
      backgroundColor: data[index!]["color"],
      elevation: 0,),
            body: loading?Loading():Container(
              height: height,
     color: Colors.white,
     child: NotificationListener<OverscrollIndicatorNotification>(
       onNotification: (OverscrollIndicatorNotification overscrollIndicatorNotification){
         overscrollIndicatorNotification.disallowIndicator();
         return true;
       },
       child: SingleChildScrollView(
         child: Column(
           children: <Widget>[
                 Hero(
                   tag: topic[index!],
                   child: ClipPath(
                      clipper: MyClipper() ,
                     child:Container(
                       height: MediaQuery.of(context).size.height/3,
                       width: MediaQuery.of(context).size.width,
                       color: data[index!]["color"],
                       child: Padding(
                         padding: EdgeInsets.only(right:width/30,left: width/10,top: height/30, bottom: height/90),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(topic[index!],style:
                             TextStyle(
                             fontStyle: FontStyle.normal,
                             letterSpacing: 1.1,
                             fontSize: 30,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                             ),),
                             SizedBox(height: 20,),
                             GestureDetector(
                               onTap: (){
                                
                                 _launchURLBrowser();
                               },
                               child: Container(
                                 height: 40,
                                 width: 140,

                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       Icon(Icons.ondemand_video_outlined,color: Colors.white,),
                                       Padding(
                                         padding: const EdgeInsets.only(left:10.0),
                                         child: Text('Watch Now',style: TextStyle(
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold
                                         ),),
                                       )
                                     ],
                                   ),
                                 ),
                                 decoration: BoxDecoration(
                                   border: Border.all(color: Colors.white),
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                               ),
                             )
                           ],
                         ),
                       )
                     ),),
                 ),

             Container(
               width: width,
               color: Colors.white,
               child: Column(children: <Widget>[
             Padding(
               padding: EdgeInsets.only(top:height/50,left: width/30),
               child: Container(
                 alignment: Alignment.centerLeft,
                 child: Text("Definition:", style:
                 TextStyle(
                     letterSpacing: 1.1,
                     fontSize: 20,
                     color: Colors.black,
                     fontWeight: FontWeight.bold
                 ),textAlign: TextAlign.left,),
               ),
             ),

             SizedBox(height: height/60),
             Padding(
               padding: EdgeInsets.only(right:width/30,left: width/30),
               child: Text(definition[index!]["definition"],style: TextStyle(
                   color: Colors.black,
                   fontSize: 20
               ),),
             ),
             SizedBox(height: 30),
             Padding(
               padding: EdgeInsets.only(right:width/30,left: width/30),
               child: Container(
                 alignment: Alignment.centerLeft,
                 child: Text("Example:", style:
                 TextStyle(
                     letterSpacing: 1.1,
                     fontSize: 20,
                     color: Colors.black,
                     fontWeight: FontWeight.bold
                 ),textAlign: TextAlign.left,),
               ),
             ),
             SizedBox(height: height/60),
             Padding(
               padding: EdgeInsets.only(right:width/30,left: width/30),
               child: Container(
                 alignment: Alignment.centerLeft,
                 child: Text(example[index!]["example"],style:
                 TextStyle(
                   letterSpacing: 1.1,
                   fontSize: 18,
                   color: data[index!]["color"],
                   fontWeight: FontWeight.bold
                 ),),
               ),
             ),
             SizedBox(height: 40),
                 if(index! < topic.indexOf('Dynamic Programming'))Padding(
                   padding: EdgeInsets.only(right:width/30,left: width/30),
                   child: Container(
                     width: width,
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: data[index!]["color"],
                       ),
                       borderRadius: BorderRadius.circular(20)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Text(code[index!],style: TextStyle(
                           color: Colors.black,
                           fontSize: 20
                       ),),
                     ),
                   ),
                 ),
                 if(index! <topic.indexOf('Dynamic Programming'))SizedBox(height: height/60),
                 if(index! <topic.indexOf('Dynamic Programming'))Padding(
                   padding: EdgeInsets.only(right:width/30,left: width/30),
                   child: Container(
                     width: width,
                     decoration: BoxDecoration(
                         color: data[index!]["color"],
                         borderRadius: BorderRadius.circular(20)
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Text("Output", style:
                           TextStyle(
                               letterSpacing: 1.1,
                               fontSize: 20,
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                           ),),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
                           child: Padding(
                             padding: const EdgeInsets.only(top:10.0,left: 10,right: 10,bottom: 30),
                             child: Text(output[index!],style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20
                             ),),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
             SizedBox(height: 30),
             Padding(
               padding: EdgeInsets.only(right:width/30,left: width/30),
               child: Container(
                 alignment: Alignment.centerLeft,
                 child: Text("Information:", style:
                 TextStyle(
                     letterSpacing: 1.1,
                     fontSize: 20,
                     color: Colors.black,
                     fontWeight: FontWeight.bold
                 ),),
               ),
             ),
             SizedBox(height: height/60),
             Padding(
               padding: EdgeInsets.only(right:width/30,left: width/30,top: height/90, bottom: 50),
               child: Container(
                 child: Text(information[index!]["info"],style: TextStyle(
                     color: Colors.black,
                     fontSize: 20
                 ),
                 ),
               ),
             )

               ],
             ),
             ),
           ],
         ),
       ),
     ),
   ),
      floatingActionButton: buildShareButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );

  }

SettingSharedPrefs()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      index = topic.indexOf(prefs.getString('info'));
    });
  }

}

class InfoProvider extends StatefulWidget {

  @override
  _InfoProviderState createState() => _InfoProviderState();
}
class MyClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height-20);
    var firstControlPoint = new Offset(size.width/4, size.height);
    var firstEndPoint = new Offset(size.width/2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = new Offset(size.width - (size.width/3.25), size.height - 65);
    var secondEndPoint = new Offset(size.width,size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  
}
