
import 'package:code_world/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
class Practice extends StatefulWidget {

  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  List array = [
    "Reverse the array",
    "Find the maximum and minimum element in an array",
    'Find the "Kth" max and min element of an array ',
    "Given an array which consists of only 0, 1 and 2. Sort the array without using any sorting algo",
    "Move all the negative elements to one side of the array ",
    "Find the Union and Intersection of the two sorted arrays.",
    "Write a program to cyclically rotate an array by one.",
    "Find Largest sum contiguous Subarray",
    "Minimise the maximum difference between heights",
    "Minimum no. of Jumps to reach end of an array",
    "Find duplicate in an array of N+1 Integers",
    "Merge 2 sorted arrays without using Extra space.",
    "Kadane's Algo",
    "Merge Intervals",
    "Next Permutation",
    "Count Inversion",
    "Best time to buy and Sell stock",
    "Find all pairs on integer array whose sum is equal to given number",
    "Find common elements In 3 sorted arrays",
    "Rearrange the array in alternating positive and negative items with O(1) extra space",
    "Find if there is any subarray with sum equal to 0",
    "Find factorial of a large number",
    "find maximum product subarray ",
    "Find longest coinsecutive subsequence",
    'Given an array of size n and a number k, fin all elements that appear more than " n/k " times.',
    "Maximum profit by buying and selling a share atmost twice",
    "Find whether an array is a subset of another array",
    "Find the triplet that sum to a given value",
    "Trapping Rain water problem",
    "Chocolate Distribution problem",
    "Smallest Subarray with sum greater than a given value",
    "Three way partitioning of an array around a given value",
    "Minimum swaps required bring elements less equal K together",
    "Minimum no. of operations required to make an array palindrome",
    "Median of 2 sorted arrays of equal size",
    "Median of 2 sorted arrays of different size",
  ];
  List matrix = [
    "Spiral traversal on a Matrix ",
    "Search an element in a matriix ",
    "Find median in a row wise sorted matrix ",
    "Find row with maximum no. of 1's ",
    "Print elements in sorted order using row-column wise sorted matrix ",
    "Maximum size rectangle ",
    "Find a specific pair in matrix ",
    "Rotate matrix by 90 degrees ",
    "Kth smallest element in a row-cpumn wise sorted matrix",
    "Common elements in all rows of a given matrix ",
  ];
  List string = [
    "Reverse a String ",
    "Check whether a String is Palindrome or not ",
    "Find Duplicate characters in a string ",
    "Why strings are immutable in Java? ",
    "Write a Code to check whether one string is a rotation of another ",
    "Write a Program to check whether a string is a valid shuffle of two strings or not ",
    "Count and Say problem ",
    "Write a program to find the longest Palindrome in a string.[ Longest palindromic Substring] ",
    "Find Longest Recurring Subsequence in String ",
    "Print all Subsequences of a string. ",
    "Print all the permutations of the given string ",
    "Split the Binary string into two substring with equal 0’s and 1’s ",
    "Word Wrap Problem. ",
    "EDIT Distance ",
    "Find next greater number with same set of digits. ",
    "Balanced Parenthesis problem. ",
    "Word break Problem ",
    "Rabin Karp Algo ",
    "KMP Algo ",
    "Convert a Sentence into its equivalent mobile numeric keypad sequence. ",
    "Minimum number of bracket reversals needed to make an expression balanced. ",
    "Count All Palindromic Subsequence in a given String. ",
    "Count of number of given string in 2D character array ",
    "Search a Word in a 2D Grid of characters. ",
    "Boyer Moore Algorithm for Pattern Searching. ",
    "Converting Roman Numerals to Decimal. ",
    "Longest Common Prefix ",
    "Number of flips to make binary string alternate ",
    "Find the first repeated word in string. ",
    "Minimum number of swaps for bracket balancing. ",
    "Find the longest common subsequence between two strings. ",
    "Program to generate all possible valid IP addresses from given  string. ",
    "Write a program to find the smallest window that contains all characters of string itself. ",
    "Minimum characters to be added at front to make string palindrome ",
    "Given a sequence of words, print all anagrams together ",
    "Find the smallest window in a string containing all characters of another string ",
    "Recursively remove all adjacent duplicates ",
    "Function to find Number of customers who could not get a computer ",
    "Transform One String to Another using Minimum Number of Given Operation ",
    "Check if two given strings are isomorphic to each other ",
    "Recursively print all sentences that can be formed from list of word lists ",
  ];
  List searchingSorting =[
    "Find first and last positions of an element in a sorted array ",
    "Find a Fixed Point (Value equal to index) in a given array ",
    "Search in a rotated sorted array ",
    "Square root of an integer ",
    "Maximum and minimum of an array using minimum number of comparisons ",
    "Optimum location of point to minimize total distance ",
    "Find the repeating and the missing ",
    "Find majority element ",
    "Searching in an array where adjacent differ by at most k ",
    "Find a pair with a given difference ",
    "Find four elements that sum to a given value ",
    "Maximum sum such that no 2 elements are adjacent ",
    "Count triplet with sum smaller than a given value ",
    "Merge 2 sorted arrays ",
    "Print all subarrays with 0 sum ",
    "Product array Puzzle ",
    "Sort array according to count of set bits ",
    "Minimum no. of swaps required to sort the array ",
    "Rasta and Kheshtak ",
    "Kth smallest number again ",
    "Find pivot element in a sorted array ",
    "K-th Element of Two Sorted Arrays ",
    "Aggressive cows ",
    "Book Allocation Problem ",
    "EKOSPOJ: ",
    "Job Scheduling Algo ",
    "Missing Number in AP ",
    "Smallest number with atleastn trailing zeroes infactorial ",
    "Painters Partition Problem: ",
    "ROTI-Prata SPOJ ",
    "DoubleHelix SPOJ ",
    "Subset Sums ",
    "Find the inversion count ",
    "Implement Merge-sort in-place ",
    "Partitioning and Sorting Arrays with Many Repeated Entries ",
  ];

  List linkedList = [
    "Write a Program to reverse the Linked List. (Both Iterative and recursive) ",
    "Reverse a Linked List in group of Given Size. ",
    "Write a program to Detect loop in a linked list. ",
    "Write a program to Delete loop in a linked list. ",
    "Find the starting point of the loop. ",
    "Remove Duplicates in a sorted Linked List. ",
    "Remove Duplicates in a Un-sorted Linked List. ",
    "Write a Program to Move the last element to Front in a Linked List. ",
    "Add “1” to a number represented as a Linked List. ",
    "Add two numbers represented by linked lists. ",
    "Intersection of two Sorted Linked List. ",
    "Intersection Point of two Linked Lists. ",
    "Merge Sort For Linked lists. ",
    "Quicksort for Linked Lists. ",
    "Find the middle Element of a linked list. ",
    "Check if a linked list is a circular linked list. ",
    "Split a Circular linked list into two halves. ",
    "Write a Program to check whether the Singly Linked list is a palindrome or not. ",
    "Deletion from a Circular Linked List. ",
    "Reverse a Doubly Linked list. ",
    "Find pairs with a given sum in a DLL. ",
    "Count triplets in a sorted DLL whose sum is equal to given value “X”. ",
    "Sort a “k”sorted Doubly Linked list. ",
    "Rotate DoublyLinked list by N nodes. ",
    "Rotate a Doubly Linked list in group of Given Size. ",
    "Can we reverse a linked list in less than O(n) ? ",
    "Why Quicksort is preferred for. Arrays and Merge Sort for LinkedLists ? ",
    "Flatten a Linked List ",
    "Sort a LL of 0's, 1's and 2's ",
    "Clone a linked list with next and random pointer ",
    "Merge K sorted Linked list ",
    "Multiply 2 no. represented by LL ",
    "Delete nodes which have a greater value on right side ",
    "Segregate even and odd nodes in a Linked List ",
    "Program for n’th node from the end of a Linked List ",
    "Find the first non-repeating character from a stream of characters ",
  ];
  List BinaryTrees =[
    "Level order traversal ",
    "Reverse Level Order traversal ",
    "Height of a tree ",
    "Diameter of a tree ",
    "Mirror of a tree ",
    "Inorder Traversal of a tree both using recursion and Iteration ",
    "Preorder Traversal of a tree both using recursion and Iteration ",
    "Postorder Traversal of a tree both using recursion and Iteration ",
    "Left View of a tree ",
    "Right View of Tree ",
    "Top View of a tree ",
    "Bottom View of a tree ",
    "Zig-Zag traversal of a binary tree ",
    "Check if a tree is balanced or not ",
    "Diagnol Traversal of a Binary tree ",
    "Boundary traversal of a Binary tree ",
    "Construct Binary Tree from String with Bracket Representation ",
    "Convert Binary tree into Doubly Linked List ",
    "Convert Binary tree into Sum tree ",
    "Construct Binary tree from Inorder and preorder traversal ",
    "Find minimum swaps required to convert a Binary tree into BST ",
    "Check if Binary tree is Sum tree or not ",
    "Check if all leaf nodes are at same level or not ",
    "Check if a Binary Tree contains duplicate subtrees of size 2 or more ",
    "Check if 2 trees are mirror or not ",
    "Sum of Nodes on the Longest path from root to leaf node  ",
    "Check if given graph is tree or not. ",
    "Find Largest subtree sum in a tree ",
    "Maximum Sum of nodes in Binary tree such that no two are adjacent  ",
    'Print all "K" Sum paths in a Binary tree ',
    "Find LCA in a Binary tree ",
    "Find distance between 2 nodes in a Binary tree ",
    "Kth Ancestor of node in a Binary tree ",
    "Find all Duplicate subtrees in a Binary tree ",
    "Tree Isomorphism Problem ",
  ];
  List BinarySearch =[
    "Fina a value in a BST ",
    "Deletion of a node in a BST ",
    "Find min and max value in a BST ",
    "Find inorder successor and inorder predecessor in a BST ",
    "Check if a tree is a BST or not  ",
    "Populate Inorder successor of all nodes ",
    "Find LCA  of 2 nodes in a BST ",
    "Construct BST from preorder traversal ",
    "Convert Binary tree into BST ",
    "Convert a normal BST into a Balanced BST ",
    "Merge two BST ",
    "Find Kth largest element in a BST ",
    "Find Kth smallest element in a BST ",
    'Count pairs from 2 BST whose sum is equal to given value "X" ',
    "Find the median of BST in O(n) time and O(1) space ",
    "Count BST ndoes that lie in a given range ",
    "Replace every element with the least greater element on its right ",
    'Given "n" appointments, find the conflicting appointments ',
    "Check preorder is valid or not ",
    "Check whether BST contains Dead end ",
    "Largest BST in a Binary Tree ",
    "Flatten BST to sorted list ",
  ];
  List greedy =[
    "Activity Selection Problem ",
    "Job SequencingProblem ",
    "Huffman Coding ",
    "Water Connection Problem ",
    "Fractional Knapsack Problem ",
    "Greedy Algorithm to find Minimum number of Coins ",
    "Maximum trains for which stoppage can be provided ",
    "Minimum Platforms Problem ",
    "Buy Maximum Stocks if i stocks can be bought on i-th day ",
    "Find the minimum and maximum amount to buy all N candies ",
    "Minimize Cash Flow among a given set of friends who have borrowed money from each other ",
    "Minimum Cost to cut a board into squares ",
    "Check if it is possible to survive on Island ",
    "Find maximum meetings in one room ",
    "Maximum product subset of an array ",
    "Maximize array sum after K negations ",
    "Maximize the sum of arr[i]*i ",
    "Maximum sum of absolute difference of an array ",
    "Maximize sum of consecutive differences in a circular array ",
    "Minimum sum of absolute difference of pairs of two arrays ",
    "Program for Shortest Job First (or SJF) CPU Scheduling ",
    "Program for Least Recently Used (LRU) Page Replacement algorithm ",
    "Smallest subset with sum greater than all other elements ",
    "Chocolate Distribution Problem ",
    "DEFKIN -Defense of a Kingdom ",
    "DIEHARD -DIE HARD ",
    "GERGOVIA -Wine trading in Gergovia ",
    "Picking Up Chicks ",
    "CHOCOLA –Chocolate ",
    "ARRANGE -Arranging Amplifiers ",
    "K Centers Problem ",
    "Minimum Cost of ropes ",
    "Find smallest number with given number of digits and sum of digits ",
    "Rearrange characters in a string such that no two adjacent are same ",
    "Find maximum sum possible equal sum of three stacks ",
  ];

  List heap =[
    "Implement a Maxheap/MinHeap using arrays and recursion. ",
    "Sort an Array using heap. (HeapSort) ",
    "Maximum of all subarrays of size k. ",
    "“k” largest element in an array ",
    "Kth smallest and largest element in an unsorted array ",
    "Merge “K” sorted arrays. ",
    "Merge 2 Binary Max Heaps ",
    "Kth largest sum continuous subarrays ",
    "Leetcode- reorganize strings ",
    "Merge “K” Sorted Linked Lists ",
    "Smallest range in “K” Lists ",
    "Median in a stream of Integers ",
    "Check if a Binary Tree is Heap ",
    "Connect “n” ropes with minimum cost ",
    "Convert BST to Min Heap ",
    "Convert min heap to max heap ",
    "Rearrange characters in a string such that no two adjacent are same. ",
    "Minimum sum of two numbers formed from digits of an array ",
  ];
  List backTracking =[
    "Rat in a maze Problem ",
    "Printing all solutions in N-Queen Problem ",
    "Word Break Problem using Backtracking ",
    "Remove Invalid Parentheses ",
    "Sudoku Solver ",
    "M Coloring Problem ",
    "Print all palindromic partitions of a string ",
    "Subset Sum Problem ",
    "The Knight’s tour problem ",
    "Tug of War ",
    "Find shortest safe route in a path with landmines ",
    "Combinational Sum ",
    "Find Maximum number possible by doing at-most K swaps ",
    "Print all permutations of a string  ",
    "Find if there is a path of more than k length from a source ",
    "Longest Possible Route in a Matrix with Hurdles ",
    "Print all possible paths from top left to bottom right of a mXn matrix ",
    "Partition of a set intoK subsets with equal sum ",
    "Find the K-th Permutation Sequence of first N natural numbers ",
  ];
  List stackQueue = [
    "Implement Stack from Scratch ",
    "Implement Queue from Scratch ",
    "Implement 2 stack in an array ",
    "Find the middle element of a stack ",
    'Implement "N" stacks in an Array ',
    "Check the expression has valid or Balanced parenthesis or not. ",
    "Reverse a String using Stack ",
    "Design a Stack that supports getMin() in O(1) time and O(1) extra space. ",
    "Find the next Greater element ",
    "The celebrity Problem ",
    "Arithmetic Expression evaluation ",
    "Evaluation of Postfix expression ",
    "Implement a method to insert an element at its bottom without using any other data structure. ",
    "Reverse a stack using recursion ",
    "Sort a Stack using recursion ",
    "Merge Overlapping Intervals ",
    "Largest rectangular Area in Histogram ",
    "Length of the Longest Valid Substring ",
    "Expression contains redundant bracket or not ",
    "Implement Stack using Queue ",
    "Implement Stack using Deque ",
    "Stack Permutations (Check if an array is stack permutation of other) ",
    "Implement Queue using Stack   ",
    'Implement "n" queue in an array ',
    "Implement a Circular queue ",
    "LRU Cache Implementationa ",
    "Reverse a Queue using recursion ",
    'Reverse the first “K” elements of a queue',
    "Interleave the first half of the queue with second half ",
    "Find the first circular tour that visits all Petrol Pumps ",
    "Minimum time required to rot all oranges ",
    "Distance of nearest cell having 1 in a binary matrix ",
    "First negative integer in every window of size “k” ",
    "Check if all levels of two trees are anagrams or not. ",
    "Sum of minimum and maximum elements of all subarrays of size “k”. ",
    "Minimum sum of squares of character counts in a given string after removing “k” characters. ",
    "Queue based approach or first non-repeating character in a stream. ",
    "Next Smaller Element ",
  ];
  List graph = [
    "Create a Graph, print it ",
    "Implement BFS algorithm ",
    "Implement DFS Algo  ",
    "Detect Cycle in Directed Graph using BFS/DFS Algo  ",
    "Detect Cycle in UnDirected Graph using BFS/DFS Algo  ",
    "Search in a Maze ",
    "Minimum Step by Knight ",
    "Flood fill algo ",
    "Clone a graph ",
    "Making wired Connections ",
    "Word Ladder  ",
    "Dijkstra algo ",
    "Implement Topological Sort  ",
    "Minimum time taken by each job to be completed given by a Directed Acyclic Graph ",
    "Find whether it is possible to finish all tasks or not from given dependencies ",
    "Find the no. of Isalnds ",
    "Given a sorted Dictionary of an Alien Language, find order of characters ",
    "Implement Kruksal’sAlgorithm ",
    "Implement Prim’s Algorithm ",
    "Total no. of Spanning tree in a graph ",
    "Implement Bellman Ford Algorithm ",
    "Implement Floyd warshallAlgorithm ",
    "Travelling Salesman Problem ",
    "Graph Colouring Problem ",
    "Snake and Ladders Problem ",
    "Find bridge in a graph ",
    "Count Strongly connected Components(Kosaraju Algo) ",
    "Check whether a graph is Bipartite or Not ",
    "Detect Negative cycle in a graph ",
    "Longest path in a Directed Acyclic Graph ",
    "Journey to the Moon ",
    "Cheapest Flights Within K Stops ",
    "Oliver and the Game ",
    "Water Jug problem using BFS ",
    "Find if there is a path of more thank length from a source ",
    "M-ColouringProblem ",
    "Minimum edges to reverse o make path from source to destination ",
    "Paths to travel each nodes using each edge(Seven Bridges) ",
    "Vertex Cover Problem ",
    "Chinese Postman or Route Inspection ",
    "Number of Triangles in a Directed and Undirected Graph ",
    "Minimise the cashflow among a given set of friends who have borrowed money from each other ",
    "Two Clique Problem ",
  ];
  List trie =[
    "Construct a trie from scratch ",
    "Find shortest unique prefix for every word in a given list ",
    "Word Break Problem | (Trie solution) ",
    "Given a sequence of words, print all anagrams together ",
    "Implement a Phone Directory ",
    "Print unique rows in a given boolean matrix ",
  ];
  List dynamicProg=[
    "Coin ChangeProblem ",
    "Knapsack Problem ",
    "Binomial CoefficientProblem ",
    "Permutation CoefficientProblem ",
    "Program for nth Catalan Number ",
    "Matrix Chain Multiplication ",
    "Edit Distance ",
    "Subset Sum Problem ",
    "Friends Pairing Problem ",
    "Gold Mine Problem ",
    "Assembly Line Scheduling Problem ",
    "Painting the Fence problem ",
    "Maximize The Cut Segments ",
    "Longest Common Subsequence ",
    "Longest Repeated Subsequence ",
    "Longest Increasing Subsequence ",
    "Space Optimized Solution of LCS ",
    "LCS (Longest Common Subsequence) of three strings ",
    "Maximum Sum Increasing Subsequence ",
    "Count all subsequences having product less than K ",
    "Longest subsequence such that difference between adjacent is one ",
    "Maximum subsequence sum such that no three are consecutive ",
    "Egg Dropping Problem ",
    "Maximum Length Chain of Pairs ",
    "Maximum size square sub-matrix with all 1s ",
    "Maximum sum of pairs with specific difference ",
    "Min Cost PathProblem ",
    "Maximum difference of zeros and ones in binary string ",
    "Minimum number of jumps to reach end ",
    "Minimum cost to fill given weight in a bag ",
    "Minimum removals from array to make max –min <= K ",
    "Longest Common Substring ",
    "Count number of ways to reacha given score in a game ",
    "Count Balanced Binary Trees of Height h ",
    "LargestSum Contiguous Subarray ",
    "Smallest sum contiguous subarray ",
    "Unbounded Knapsack (Repetition of items allowed) ",
    "Word Break Problem ",
    "Largest Independent Set Problem ",
    "Partition problem ",
    "Longest Palindromic Subsequence ",
    "Count All Palindromic Subsequence in a given String ",
    "Longest Palindromic Substring ",
    "Longest alternating subsequence ",
    "Weighted Job Scheduling ",
    "Coin game winner where every player has three choices ",
    "Count Derangements (Permutation such that no element appears in its original position) ",
    "Maximum profit by buying and selling a share at most twice ",
    "Optimal Strategy for a Game ",
    "Optimal Binary Search Tree ",
    "Palindrome PartitioningProblem ",
    "Word Wrap Problem ",
    "Mobile Numeric Keypad Problem ",
    "Boolean Parenthesization Problem ",
    "Largest rectangular sub-matrix whose sum is 0 ",
    "Largest area rectangular sub-matrix with equal number of 1’s and 0’s ",
    "Maximum sum rectangle in a 2D matrix ",
    "Maximum profit by buying and selling a share at most k times ",
    "Find if a string is interleaved of two other strings ",
    "Maximum Length of Pair Chain ",
  ];
  List BitManipulation =[
    "Count set bits in an integer ",
    "Find the two non-repeating elements in an array of repeating elements ",
    "Count number of bits to be flipped to convert A to B ",
    "Count total set bits in all numbers from 1 to n ",
    "Program to find whether a no is power of two ",
    "Find position of the only set bit ",
    "Copy set bits in a range ",
    "Divide two integers without using multiplication, division and mod operator ",
    "Calculate square of a number without using *, / and pow() ",
    "Power Set ",
  ];
  List ArrayUrl=[
    "https://www.geeksforgeeks.org/write-a-program-to-reverse-an-array-or-string/",
    "https://www.geeksforgeeks.org/maximum-and-minimum-in-an-array/",
    'https://practice.geeksforgeeks.org/problems/kth-smallest-element5635/1',
    "https://practice.geeksforgeeks.org/problems/sort-an-array-of-0s-1s-and-2s4231/1",
    "https://www.geeksforgeeks.org/move-negative-numbers-beginning-positive-end-constant-extra-space/",
    "https://practice.geeksforgeeks.org/problems/union-of-two-arrays3538/1",
    "https://practice.geeksforgeeks.org/problems/cyclically-rotate-an-array-by-one2614/1",
    "https://practice.geeksforgeeks.org/problems/kadanes-algorithm-1587115620/1",
    "https://practice.geeksforgeeks.org/problems/minimize-the-heights3351/1",
    "https://practice.geeksforgeeks.org/problems/minimum-number-of-jumps-1587115620/1",
    "https://leetcode.com/problems/find-the-duplicate-number/",
    "https://practice.geeksforgeeks.org/problems/merge-two-sorted-arrays5135/1",
    "https://practice.geeksforgeeks.org/problems/kadanes-algorithm-1587115620/1",
    "https://leetcode.com/problems/merge-intervals/",
    "https://leetcode.com/problems/next-permutation/",
    "https://practice.geeksforgeeks.org/problems/inversion-of-array-1587115620/1",
    "https://leetcode.com/problems/best-time-to-buy-and-sell-stock/",
    "https://practice.geeksforgeeks.org/problems/count-pairs-with-given-sum5022/1",
    "https://practice.geeksforgeeks.org/problems/common-elements1132/1",
    "https://www.geeksforgeeks.org/rearrange-array-alternating-positive-negative-items-o1-extra-space/",
    "https://practice.geeksforgeeks.org/problems/subarray-with-0-sum-1587115621/1",
    "https://practice.geeksforgeeks.org/problems/factorials-of-large-numbers2508/1",
    "https://practice.geeksforgeeks.org/problems/maximum-product-subarray3604/1",
    "https://practice.geeksforgeeks.org/problems/longest-consecutive-subsequence2449/1",
    'https://www.geeksforgeeks.org/given-an-array-of-of-size-n-finds-all-the-elements-that-appear-more-than-nk-times/',
    "https://www.geeksforgeeks.org/maximum-profit-by-buying-and-selling-a-share-at-most-twice/",
    "https://practice.geeksforgeeks.org/problems/array-subset-of-another-array2317/1",
    "https://practice.geeksforgeeks.org/problems/triplet-sum-in-array-1587115621/1",
    "https://practice.geeksforgeeks.org/problems/trapping-rain-water-1587115621/1",
    "https://practice.geeksforgeeks.org/problems/chocolate-distribution-problem3825/1",
    "https://practice.geeksforgeeks.org/problems/smallest-subarray-with-sum-greater-than-x5651/1",
    "https://practice.geeksforgeeks.org/problems/three-way-partitioning/1",
    "https://practice.geeksforgeeks.org/problems/minimum-swaps-required-to-bring-all-elements-less-than-or-equal-to-k-together4847/1",
    "https://practice.geeksforgeeks.org/problems/palindromic-array-1587115620/1",
    "https://practice.geeksforgeeks.org/problems/find-the-median0527/1",
    "https://www.geeksforgeeks.org/median-of-two-sorted-arrays-of-different-sizes/",
  ];
  List matrixUrl = [
    "https://practice.geeksforgeeks.org/problems/spirally-traversing-a-matrix-1587115621/1",
    "https://leetcode.com/problems/search-a-2d-matrix/",
    "https://practice.geeksforgeeks.org/problems/median-in-a-row-wise-sorted-matrix1527/1",
    "https://practice.geeksforgeeks.org/problems/row-with-max-1s0023/1",
    "https://practice.geeksforgeeks.org/problems/sorted-matrix2333/1",
    "https://practice.geeksforgeeks.org/problems/max-rectangle/1",
    "https://www.geeksforgeeks.org/find-a-specific-pair-in-matrix/",
    "https://www.geeksforgeeks.org/rotate-a-matrix-by-90-degree-in-clockwise-direction-without-using-any-extra-space/",
    "https://practice.geeksforgeeks.org/problems/kth-element-in-matrix/1",
    "https://www.geeksforgeeks.org/common-elements-in-all-rows-of-a-given-matrix/",
  ];
  List stringUrl=[
    "https://leetcode.com/problems/reverse-string/",
    "https://practice.geeksforgeeks.org/problems/palindrome-string0817/1",
    "https://www.geeksforgeeks.org/print-all-the-duplicates-in-the-input-string/",
    "https://stackoverflow.com/questions/22397861/why-is-string-immutable-in-java#:~:text=String%20is%20Immutable%20in%20Java,would%20affect%20all%20another%20client.",
    "https://www.geeksforgeeks.org/a-program-to-check-if-strings-are-rotations-of-each-other/",
    "https://www.programiz.com/java-programming/examples/check-valid-shuffle-of-strings",
    "https://leetcode.com/problems/count-and-say/",
    "https://practice.geeksforgeeks.org/problems/longest-palindrome-in-a-string3411/1",
    "https://practice.geeksforgeeks.org/problems/longest-repeating-subsequence2004/1",
    "https://www.geeksforgeeks.org/print-subsequences-string/",
    "https://practice.geeksforgeeks.org/problems/permutations-of-a-given-string2041/1",
    "https://www.geeksforgeeks.org/split-the-binary-string-into-substrings-with-equal-number-of-0s-and-1s/",
    "https://practice.geeksforgeeks.org/problems/word-wrap1646/1",
    "https://practice.geeksforgeeks.org/problems/edit-distance3702/1",
    "https://practice.geeksforgeeks.org/problems/next-permutation5226/1",
    "https://practice.geeksforgeeks.org/problems/parenthesis-checker2744/1",
    "https://practice.geeksforgeeks.org/problems/word-break1352/1",
    "https://www.geeksforgeeks.org/rabin-karp-algorithm-for-pattern-searching/",
    "https://practice.geeksforgeeks.org/problems/longest-prefix-suffix2527/1",
    "https://www.geeksforgeeks.org/convert-sentence-equivalent-mobile-numeric-keypad-sequence/",
    "https://practice.geeksforgeeks.org/problems/count-the-reversals0401/1",
    "https://practice.geeksforgeeks.org/problems/count-palindromic-subsequences/1",
    "https://www.geeksforgeeks.org/find-count-number-given-string-present-2d-character-array/",
    "https://www.geeksforgeeks.org/search-a-word-in-a-2d-grid-of-characters/",
    "https://www.geeksforgeeks.org/boyer-moore-algorithm-for-pattern-searching/ ",
    "https://practice.geeksforgeeks.org/problems/roman-number-to-integer3201/1",
    "https://leetcode.com/problems/longest-common-prefix/",
    "https://practice.geeksforgeeks.org/problems/min-number-of-flips3210/1",
    "https://practice.geeksforgeeks.org/problems/second-most-repeated-string-in-a-sequence0534/1",
    "https://practice.geeksforgeeks.org/problems/minimum-swaps-for-bracket-balancing2704/1",
    "https://practice.geeksforgeeks.org/problems/longest-common-subsequence-1587115620/1",
    "https://www.geeksforgeeks.org/program-generate-possible-valid-ip-addresses-given-string/",
    "https://practice.geeksforgeeks.org/problems/smallest-distant-window3132/1 ",
    "https://www.geeksforgeeks.org/minimum-characters-added-front-make-string-palindrome/",
    "https://practice.geeksforgeeks.org/problems/print-anagrams-together/1",
    "https://practice.geeksforgeeks.org/problems/smallest-window-in-a-string-containing-all-the-characters-of-another-string-1587115621/1",
    "https://practice.geeksforgeeks.org/problems/consecutive-elements2306/1",
    "https://www.geeksforgeeks.org/function-to-find-number-of-customers-who-could-not-get-a-computer/",
    "https://www.geeksforgeeks.org/transform-one-string-to-another-using-minimum-number-of-given-operation/",
    "https://practice.geeksforgeeks.org/problems/isomorphic-strings-1587115620/1",
    "https://www.geeksforgeeks.org/recursively-print-all-sentences-that-can-be-formed-from-list-of-word-lists/",
  ];
 List searchingUrl=[
   "https://practice.geeksforgeeks.org/problems/first-and-last-occurrences-of-x3116/1",
   "https://practice.geeksforgeeks.org/problems/value-equal-to-index-value1330/1",
   "https://leetcode.com/problems/search-in-rotated-sorted-array/",
   "https://practice.geeksforgeeks.org/problems/count-squares3649/1",
   "https://practice.geeksforgeeks.org/problems/middle-of-three2926/1",
   "https://www.geeksforgeeks.org/optimum-location-point-minimize-total-distance/#:~:text=We%20need%20to%20find%20a,set%20of%20points%20is%20minimum.&text=In%20above%20figure%20optimum%20location,is%20minimum%20obtainable%20total%20distance.",
   "https://practice.geeksforgeeks.org/problems/find-missing-and-repeating2512/1",
   "https://practice.geeksforgeeks.org/problems/majority-element-1587115620/1",
   "https://www.geeksforgeeks.org/searching-array-adjacent-differ-k/",
   "https://practice.geeksforgeeks.org/problems/find-pair-given-difference1559/1",
   "https://practice.geeksforgeeks.org/problems/find-all-four-sum-numbers1732/1",
   "https://practice.geeksforgeeks.org/problems/stickler-theif-1587115621/1",
   "https://practice.geeksforgeeks.org/problems/count-triplets-with-sum-smaller-than-x5549/1",
   "https://practice.geeksforgeeks.org/problems/merge-two-sorted-arrays5135/1",
   "https://practice.geeksforgeeks.org/problems/zero-sum-subarrays1825/1",
   "https://practice.geeksforgeeks.org/problems/product-array-puzzle4525/1",
   "https://practice.geeksforgeeks.org/problems/sort-by-set-bit-count1153/1",
   "https://practice.geeksforgeeks.org/problems/minimum-swaps/1",
   "https://www.hackerearth.com/practice/algorithms/searching/binary-search/practice-problems/algorithm/rasta-and-kheshtak/",
   "https://www.hackerearth.com/practice/algorithms/searching/binary-search/practice-problems/algorithm/kth-smallest-number-again-2/",
   "http://theoryofprogramming.com/2017/12/16/find-pivot-element-sorted-rotated-array/",
   "https://practice.geeksforgeeks.org/problems/k-th-element-of-two-sorted-array1317/1",
   "https://www.spoj.com/problems/AGGRCOW/",
   "https://practice.geeksforgeeks.org/problems/allocate-minimum-number-of-pages0937/1",
   "https://www.spoj.com/problems/EKO/",
   "https://www.geeksforgeeks.org/weighted-job-scheduling-log-n-time/",
   "https://practice.geeksforgeeks.org/problems/arithmetic-number2815/1",
   "https://practice.geeksforgeeks.org/problems/smallest-factorial-number5929/1",
   "https://practice.geeksforgeeks.org/problems/allocate-minimum-number-of-pages0937/1",
   "https://www.spoj.com/problems/PRATA/",
   "https://www.spoj.com/problems/ANARC05B/",
   "https://www.spoj.com/problems/SUBSUMS/",
   "https://practice.geeksforgeeks.org/problems/inversion-of-array-1587115620/1",
   "https://www.geeksforgeeks.org/in-place-merge-sort/",
   "https://www.codingninjas.com/codestudio/problem-details/partitioning-and-sorting-arrays-with-many-repeated-entries_1170515",
 ];
 List linkedListUrl=[
   "https://www.geeksforgeeks.org/reverse-a-linked-list/",
   "https://practice.geeksforgeeks.org/problems/reverse-a-linked-list-in-groups-of-given-size/1",
   "https://practice.geeksforgeeks.org/problems/detect-loop-in-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/remove-loop-in-linked-list/1",
   "https://www.geeksforgeeks.org/find-first-node-of-loop-in-a-linked-list/",
   "https://practice.geeksforgeeks.org/problems/remove-duplicate-element-from-sorted-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/remove-duplicates-from-an-unsorted-linked-list/1",
   "https://www.geeksforgeeks.org/move-last-element-to-front-of-a-given-linked-list/",
   "https://practice.geeksforgeeks.org/problems/add-1-to-a-number-represented-as-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/add-two-numbers-represented-by-linked-lists/1",
   "https://practice.geeksforgeeks.org/problems/intersection-of-two-sorted-linked-lists/1",
   "https://practice.geeksforgeeks.org/problems/intersection-point-in-y-shapped-linked-lists/1",
   "https://practice.geeksforgeeks.org/problems/sort-a-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/quick-sort-on-linked-list/1 ",
   "https://leetcode.com/problems/middle-of-the-linked-list/",
   "https://practice.geeksforgeeks.org/problems/circular-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/split-a-circular-linked-list-into-two-halves/1",
   "https://practice.geeksforgeeks.org/problems/check-if-linked-list-is-pallindrome/1 ",
   "https://www.geeksforgeeks.org/deletion-circular-linked-list/",
   "https://practice.geeksforgeeks.org/problems/reverse-a-doubly-linked-list/1",
   "https://www.geeksforgeeks.org/find-pairs-given-sum-doubly-linked-list/",
   "https://www.geeksforgeeks.org/count-triplets-sorted-doubly-linked-list-whose-sum-equal-given-value-x/",
   "https://www.geeksforgeeks.org/sort-k-sorted-doubly-linked-list/",
   "https://www.geeksforgeeks.org/rotate-doubly-linked-list-n-nodes/",
   "https://www.geeksforgeeks.org/reverse-doubly-linked-list-groups-given-size/",
   "https://www.geeksforgeeks.org/can-we-reverse-a-linked-list-in-less-than-on/",
   "https://www.geeksforgeeks.org/why-quick-sort-preferred-for-arrays-and-merge-sort-for-linked-lists/",
   "https://practice.geeksforgeeks.org/problems/flattening-a-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/given-a-linked-list-of-0s-1s-and-2s-sort-it/1",
   "https://practice.geeksforgeeks.org/problems/clone-a-linked-list-with-next-and-random-pointer/1",
   "https://practice.geeksforgeeks.org/problems/merge-k-sorted-linked-lists/1",
   "https://practice.geeksforgeeks.org/problems/multiply-two-linked-lists/1",
   "https://practice.geeksforgeeks.org/problems/delete-nodes-having-greater-value-on-right/1",
   "https://practice.geeksforgeeks.org/problems/segregate-even-and-odd-nodes-in-a-linked-list5035/1",
   "https://practice.geeksforgeeks.org/problems/nth-node-from-end-of-linked-list/1",
   "https://practice.geeksforgeeks.org/problems/first-non-repeating-character-in-a-stream1216/1",
 ];
 List binarytreesUrl=[
   "https://practice.geeksforgeeks.org/problems/level-order-traversal/1",
   "https://practice.geeksforgeeks.org/problems/reverse-level-order-traversal/1",
   "https://practice.geeksforgeeks.org/problems/height-of-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/diameter-of-binary-tree/1",
   "https://www.geeksforgeeks.org/create-a-mirror-tree-from-the-given-binary-tree/",
   "https://www.techiedelight.com/inorder-tree-traversal-iterative-recursive/",
   "https://www.techiedelight.com/preorder-tree-traversal-iterative-recursive/",
   "https://www.techiedelight.com/postorder-tree-traversal-iterative-recursive/",
   "https://practice.geeksforgeeks.org/problems/left-view-of-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/right-view-of-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/top-view-of-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/bottom-view-of-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/zigzag-tree-traversal/1",
   "https://practice.geeksforgeeks.org/problems/check-for-balanced-tree/1",
   "https://www.geeksforgeeks.org/diagonal-traversal-of-binary-tree/",
   "https://practice.geeksforgeeks.org/problems/boundary-traversal-of-binary-tree/1",
   "https://www.geeksforgeeks.org/construct-binary-tree-string-bracket-representation/",
   "https://practice.geeksforgeeks.org/problems/binary-tree-to-dll/1",
   "https://practice.geeksforgeeks.org/problems/transform-to-sum-tree/1",
   "https://practice.geeksforgeeks.org/problems/construct-tree-1/1",
   "https://www.geeksforgeeks.org/minimum-swap-required-convert-binary-tree-binary-search-tree/#:~:text=Given%20the%20array%20representation%20of,it%20into%20Binary%20Search%20Tree.&text=Swap%201%3A%20Swap%20node%208,node%209%20with%20node%2010. ",
   "https://practice.geeksforgeeks.org/problems/sum-tree/1",
   "https://practice.geeksforgeeks.org/problems/leaf-at-same-level/1",
   "https://practice.geeksforgeeks.org/problems/duplicate-subtree-in-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/check-mirror-in-n-ary-tree1528/1",
   "https://practice.geeksforgeeks.org/problems/sum-of-the-longest-bloodline-of-a-tree/1",
   "https://www.geeksforgeeks.org/check-given-graph-tree/#:~:text=Since%20the%20graph%20is%20undirected,graph%20is%20connected%2C%20otherwise%20not.",
   "https://www.geeksforgeeks.org/find-largest-subtree-sum-tree/",
   "https://www.geeksforgeeks.org/maximum-sum-nodes-binary-tree-no-two-adjacent/",
   'https://www.geeksforgeeks.org/print-k-sum-paths-binary-tree/',
   "https://practice.geeksforgeeks.org/problems/lowest-common-ancestor-in-a-binary-tree/1",
   "https://practice.geeksforgeeks.org/problems/min-distance-between-two-given-nodes-of-a-binary-tree/1",
   "https://www.geeksforgeeks.org/kth-ancestor-node-binary-tree-set-2/",
   "https://practice.geeksforgeeks.org/problems/duplicate-subtrees/1",
   "https://practice.geeksforgeeks.org/problems/check-if-tree-is-isomorphic/1",
    ];
 List binarysearchTreeUrl=[
   "https://www.geeksforgeeks.org/binary-search-tree-set-1-search-and-insertion/ ",
   "https://leetcode.com/problems/delete-node-in-a-bst/",
   "https://practice.geeksforgeeks.org/problems/minimum-element-in-bst/1",
   "https://practice.geeksforgeeks.org/problems/predecessor-and-successor/1",
   "https://practice.geeksforgeeks.org/problems/check-for-bst/1",
   "https://practice.geeksforgeeks.org/problems/populate-inorder-successor-for-all-nodes/1",
   "https://practice.geeksforgeeks.org/problems/lowest-common-ancestor-in-a-bst/1",
   "https://www.geeksforgeeks.org/construct-bst-from-given-preorder-traversa/",
   "https://practice.geeksforgeeks.org/problems/binary-tree-to-bst/1",
   "https://www.geeksforgeeks.org/convert-normal-bst-balanced-bst/",
   "https://www.geeksforgeeks.org/merge-two-balanced-binary-search-trees/",
   "https://practice.geeksforgeeks.org/problems/kth-largest-element-in-bst/1",
   "https://practice.geeksforgeeks.org/problems/find-k-th-smallest-element-in-bst/1",
   'https://practice.geeksforgeeks.org/problems/brothers-from-different-root/1',
   "https://www.geeksforgeeks.org/find-median-bst-time-o1-space/",
   "https://practice.geeksforgeeks.org/problems/count-bst-nodes-that-lie-in-a-given-range/1",
   "https://www.geeksforgeeks.org/replace-every-element-with-the-least-greater-element-on-its-right/",
   'https://www.geeksforgeeks.org/given-n-appointments-find-conflicting-appointments/',
   "https://practice.geeksforgeeks.org/problems/preorder-to-postorder4423/1",
   "https://practice.geeksforgeeks.org/problems/check-whether-bst-contains-dead-end/1",
   "https://practice.geeksforgeeks.org/problems/largest-bst/1",
   "https://www.geeksforgeeks.org/flatten-bst-to-sorted-list-increasing-order/ ",

 ];
 List greedyUrl=[
   "https://practice.geeksforgeeks.org/problems/n-meetings-in-one-room-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/job-sequencing-problem-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/huffman-encoding3345/1",
   "https://practice.geeksforgeeks.org/problems/water-connection-problem5822/1",
   "https://practice.geeksforgeeks.org/problems/fractional-knapsack-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/choose-and-swap0531/1",
   "https://www.geeksforgeeks.org/maximum-trains-stoppage-can-provided/",
   "https://practice.geeksforgeeks.org/problems/minimum-platforms-1587115620/1",
   "https://www.geeksforgeeks.org/buy-maximum-stocks-stocks-can-bought-th-day/",
   "https://practice.geeksforgeeks.org/problems/shop-in-candy-store1145/1",
   "https://www.geeksforgeeks.org/minimize-cash-flow-among-given-set-friends-borrowed-money/",
   "https://www.geeksforgeeks.org/minimum-cost-cut-board-squares/",
   "https://www.geeksforgeeks.org/survival/",
   "https://www.geeksforgeeks.org/find-maximum-meetings-in-one-room/",
   "https://www.geeksforgeeks.org/maximum-product-subset-array/",
   "https://practice.geeksforgeeks.org/problems/maximize-sum-after-k-negations1149/1",
   "https://practice.geeksforgeeks.org/problems/maximize-arrii-of-an-array0026/1",
   "https://www.geeksforgeeks.org/maximum-sum-absolute-difference-array/",
   "https://practice.geeksforgeeks.org/problems/swap-and-maximize5859/1",
   "https://www.geeksforgeeks.org/minimum-sum-absolute-difference-pairs-two-arrays/#:~:text=It%20consists%20of%20two%20steps,result%20to%20the%20sum%20S.",
   "https://www.geeksforgeeks.org/program-for-shortest-job-first-or-sjf-cpu-scheduling-set-1-non-preemptive/",
   "https://practice.geeksforgeeks.org/problems/page-faults-in-lru5603/1",
   "https://www.geeksforgeeks.org/smallest-subset-sum-greater-elements/",
   "https://practice.geeksforgeeks.org/problems/chocolate-distribution-problem3825/1",
   "https://www.spoj.com/problems/DEFKIN/",
   "https://www.spoj.com/problems/DIEHARD/",
   "https://www.spoj.com/problems/GERGOVIA/",
   "https://www.spoj.com/problems/GCJ101BB/ ",
   "https://www.spoj.com/problems/CHOCOLA/",
   "https://www.spoj.com/problems/ARRANGE/ ",
   "https://www.geeksforgeeks.org/k-centers-problem-set-1-greedy-approximate-algorithm/",
   "https://practice.geeksforgeeks.org/problems/minimum-cost-of-ropes-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/smallest-number5829/1",
   "https://www.geeksforgeeks.org/rearrange-characters-string-no-two-adjacent/",
   "https://www.geeksforgeeks.org/find-maximum-sum-possible-equal-sum-three-stacks/",
 ];
 List backTrackingUrl=[
   "https://practice.geeksforgeeks.org/problems/rat-in-a-maze-problem/1",
   "https://www.geeksforgeeks.org/printing-solutions-n-queen-problem/",
   "https://practice.geeksforgeeks.org/problems/word-break-part-23249/1",
   "https://leetcode.com/problems/remove-invalid-parentheses/",
   "https://practice.geeksforgeeks.org/problems/solve-the-sudoku-1587115621/1",
   "https://practice.geeksforgeeks.org/problems/m-coloring-problem-1587115620/1",
   "https://www.geeksforgeeks.org/given-a-string-print-all-possible-palindromic-partition/",
   "https://practice.geeksforgeeks.org/problems/subset-sum-problem2014/1",
   "https://www.geeksforgeeks.org/the-knights-tour-problem-backtracking-1/",
   "https://www.geeksforgeeks.org/tug-of-war/",
   "https://www.geeksforgeeks.org/find-shortest-safe-route-in-a-path-with-landmines/",
   "https://practice.geeksforgeeks.org/problems/combination-sum-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/largest-number-in-k-swaps-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/permutations-of-a-given-string2041/1",
   "https://www.geeksforgeeks.org/find-if-there-is-a-path-of-more-than-k-length-from-a-source/",
   "https://www.geeksforgeeks.org/longest-possible-route-in-a-matrix-with-hurdles/",
   "https://www.geeksforgeeks.org/print-all-possible-paths-from-top-left-to-bottom-right-of-a-mxn-matrix/",
   "https://practice.geeksforgeeks.org/problems/partition-array-to-k-subsets/1",
   "https://www.geeksforgeeks.org/find-the-k-th-permutation-sequence-of-first-n-natural-numbers/",
 ];
 List stackUrl=[
   "https://www.tutorialspoint.com/javaexamples/data_stack.htm",
   "https://www.geeksforgeeks.org/queue-set-1introduction-and-array-implementation/",
   "https://practice.geeksforgeeks.org/problems/implement-two-stacks-in-an-array/1",
   "https://www.geeksforgeeks.org/design-a-stack-with-find-middle-operation/",
   'https://www.geeksforgeeks.org/efficiently-implement-k-stacks-single-array/',
   "https://practice.geeksforgeeks.org/problems/parenthesis-checker2744/1",
   "https://practice.geeksforgeeks.org/problems/reverse-a-string-using-stack/1",
   "https://practice.geeksforgeeks.org/problems/special-stack/1",
   "https://practice.geeksforgeeks.org/problems/next-larger-element-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/the-celebrity-problem/1",
   "https://www.geeksforgeeks.org/arithmetic-expression-evalution/#:~:text=The%20stack%20organization%20is%20very,i.e.%2C%20A%20%2B%20B).",
   "https://practice.geeksforgeeks.org/problems/evaluation-of-postfix-expression1735/1",
   "https://stackoverflow.com/questions/45130465/inserting-at-the-end-of-stack",
   "https://www.geeksforgeeks.org/reverse-a-stack-using-recursion/",
   "https://practice.geeksforgeeks.org/problems/sort-a-stack/1",
   "https://www.geeksforgeeks.org/merging-intervals/",
   "https://practice.geeksforgeeks.org/problems/maximum-rectangular-area-in-a-histogram-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/valid-substring0624/1",
   "https://www.geeksforgeeks.org/expression-contains-redundant-bracket-not/",
   "https://practice.geeksforgeeks.org/problems/stack-using-two-queues/1",
   "https://www.geeksforgeeks.org/implement-stack-queue-using-deque/",
   "https://www.geeksforgeeks.org/stack-permutations-check-if-an-array-is-stack-permutation-of-other/",
   "https://practice.geeksforgeeks.org/problems/queue-using-two-stacks/1",
   'https://www.geeksforgeeks.org/efficiently-implement-k-queues-single-array/',
   "https://www.geeksforgeeks.org/circular-queue-set-1-introduction-array-implementation/",
   "https://practice.geeksforgeeks.org/problems/lru-cache/1",
   'https://practice.geeksforgeeks.org/problems/queue-reversal/1',
   "https://practice.geeksforgeeks.org/problems/reverse-first-k-elements-of-queue/1",
   "https://www.geeksforgeeks.org/interleave-first-half-queue-second-half/",
   "https://practice.geeksforgeeks.org/problems/circular-tour/1",
   "https://practice.geeksforgeeks.org/problems/rotten-oranges2536/1",
   "https://practice.geeksforgeeks.org/problems/distance-of-nearest-cell-having-1-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/first-negative-integer-in-every-window-of-size-k3345/1",
   "https://www.geeksforgeeks.org/check-if-all-levels-of-two-trees-are-anagrams-or-not/",
   "https://www.geeksforgeeks.org/sum-minimum-maximum-elements-subarrays-size-k/",
   "https://practice.geeksforgeeks.org/problems/game-with-string4100/1",
   "https://practice.geeksforgeeks.org/problems/first-non-repeating-character-in-a-stream1216/1 ",
   "https://www.geeksforgeeks.org/next-smaller-element/",
 ];
 List heapUrl=[
   "https://www.geeksforgeeks.org/building-heap-from-array/",
   "https://www.geeksforgeeks.org/heap-sort/",
   "https://www.geeksforgeeks.org/sliding-window-maximum-maximum-of-all-subarrays-of-size-k/",
   "https://practice.geeksforgeeks.org/problems/k-largest-elements4206/1",
   "https://www.geeksforgeeks.org/kth-smallestlargest-element-unsorted-array/",
   "https://practice.geeksforgeeks.org/problems/merge-k-sorted-arrays/1",
   "https://practice.geeksforgeeks.org/problems/merge-two-binary-max-heap0144/1",
   "https://www.geeksforgeeks.org/k-th-largest-sum-contiguous-subarray/",
   "https://leetcode.com/problems/reorganize-string/",
   "https://practice.geeksforgeeks.org/problems/merge-k-sorted-linked-lists/1",
   "https://practice.geeksforgeeks.org/problems/find-smallest-range-containing-elements-from-k-lists/1",
   "https://practice.geeksforgeeks.org/problems/find-median-in-a-stream-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/is-binary-tree-heap/1",
   "https://practice.geeksforgeeks.org/problems/minimum-cost-of-ropes-1587115620/1",
   "https://www.geeksforgeeks.org/convert-bst-min-heap/",
   "https://www.geeksforgeeks.org/convert-min-heap-to-max-heap/",
   "https://www.geeksforgeeks.org/rearrange-characters-string-no-two-adjacent/",
   "https://www.geeksforgeeks.org/minimum-sum-two-numbers-formed-digits-array/",];

 List graphUrl=[
   "https://onedrive.live.com/?authkey=%21AJrTq_U8BPKIWDk&cid=842AECBB531CCEA4&id=842AECBB531CCEA4%211179&parId=842AECBB531CCEA4%211164&o=OneUp",
   "https://practice.geeksforgeeks.org/problems/bfs-traversal-of-graph/1",
   "https://www.geeksforgeeks.org/depth-first-search-or-dfs-for-a-graph/",
   "https://www.geeksforgeeks.org/detect-cycle-in-a-graph/",
   "https://practice.geeksforgeeks.org/problems/detect-cycle-in-an-undirected-graph/1",
   "https://practice.geeksforgeeks.org/problems/rat-in-a-maze-problem/1",
   "https://practice.geeksforgeeks.org/problems/steps-by-knight5927/1",
   "https://leetcode.com/problems/flood-fill/",
   "https://leetcode.com/problems/clone-graph/",
   "https://leetcode.com/problems/number-of-operations-to-make-network-connected/",
   "https://leetcode.com/problems/word-ladder/",
   "https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/",
   "https://practice.geeksforgeeks.org/problems/topological-sort/1",
   "https://www.geeksforgeeks.org/minimum-time-taken-by-each-job-to-be-completed-given-by-a-directed-acyclic-graph/",
   "https://www.geeksforgeeks.org/find-whether-it-is-possible-to-finish-all-tasks-or-not-from-given-dependencies/ ",
   "https://www.geeksforgeeks.org/find-whether-it-is-possible-to-finish-all-tasks-or-not-from-given-dependencies/",
   "https://practice.geeksforgeeks.org/problems/alien-dictionary/1 ",
   "https://www.geeksforgeeks.org/kruskals-minimum-spanning-tree-algorithm-greedy-algo-2/",
   "https://www.geeksforgeeks.org/prims-minimum-spanning-tree-mst-greedy-algo-5/",
   "https://www.geeksforgeeks.org/total-number-spanning-trees-graph/",
   "https://practice.geeksforgeeks.org/problems/negative-weight-cycle3504/1 ",
   "https://practice.geeksforgeeks.org/problems/implementing-floyd-warshall2042/1",
   "https://www.geeksforgeeks.org/travelling-salesman-problem-set-1/",
   "https://www.geeksforgeeks.org/graph-coloring-applications/#:~:text=Graph%20coloring%20problem%20is%20to,are%20colored%20using%20same%20color.",
   "https://leetcode.com/problems/snakes-and-ladders/",
   "https://www.geeksforgeeks.org/bridge-in-a-graph/",
   "https://practice.geeksforgeeks.org/problems/strongly-connected-components-kosarajus-algo/1",
   "https://www.geeksforgeeks.org/bipartite-graph/",
   "https://www.geeksforgeeks.org/detect-negative-cycle-graph-bellman-ford/",
   "https://www.geeksforgeeks.org/find-longest-path-directed-acyclic-graph/",
   "https://www.hackerrank.com/challenges/journey-to-the-moon/problem",
   "https://leetcode.com/problems/cheapest-flights-within-k-stops/description/",
   "https://www.hackerearth.com/practice/algorithms/graphs/topological-sort/practice-problems/algorithm/oliver-and-the-game-3/",
   "https://www.geeksforgeeks.org/water-jug-problem-using-bfs/",
   "https://www.geeksforgeeks.org/find-if-there-is-a-path-of-more-than-k-length-from-a-source/",
   "https://practice.geeksforgeeks.org/problems/m-coloring-problem-1587115620/1",
   "https://www.geeksforgeeks.org/minimum-edges-reverse-make-path-source-destination/",
   "https://www.geeksforgeeks.org/paths-travel-nodes-using-edgeseven-bridges-konigsberg/",
   "https://www.geeksforgeeks.org/vertex-cover-problem-set-1-introduction-approximate-algorithm-2/",
   "https://www.geeksforgeeks.org/chinese-postman-route-inspection-set-1-introduction/",
   "https://www.geeksforgeeks.org/number-of-triangles-in-directed-and-undirected-graphs/",
   "https://www.geeksforgeeks.org/minimize-cash-flow-among-given-set-friends-borrowed-money/",
   "https://www.geeksforgeeks.org/two-clique-problem-check-graph-can-divided-two-cliques/",
 ];
 List trieUrl=[
   "https://www.geeksforgeeks.org/trie-insert-and-search/",
   "https://www.geeksforgeeks.org/find-all-shortest-unique-prefixes-to-represent-each-word-in-a-given-list/",
   "https://www.geeksforgeeks.org/word-break-problem-trie-solution/",
   "https://practice.geeksforgeeks.org/problems/print-anagrams-together/1",
   "https://practice.geeksforgeeks.org/problems/phone-directory4628/1",
   "https://practice.geeksforgeeks.org/problems/unique-rows-in-boolean-matrix/1",
 ];
 List dynamicUrl=[
   "https://practice.geeksforgeeks.org/problems/coin-change2448/1",
   "https://practice.geeksforgeeks.org/problems/0-1-knapsack-problem0945/1",
   "https://practice.geeksforgeeks.org/problems/ncr1019/1",
   "https://www.geeksforgeeks.org/permutation-coefficient/",
   "https://www.geeksforgeeks.org/program-nth-catalan-number/",
   "https://www.geeksforgeeks.org/matrix-chain-multiplication-dp-8/",
   "https://practice.geeksforgeeks.org/problems/edit-distance3702/1",
   "https://practice.geeksforgeeks.org/problems/subset-sum-problem2014/1 ",
   "https://practice.geeksforgeeks.org/problems/friends-pairing-problem5425/1",
   "https://www.geeksforgeeks.org/gold-mine-problem/",
   "https://www.geeksforgeeks.org/assembly-line-scheduling-dp-34/",
   "https://practice.geeksforgeeks.org/problems/painting-the-fence3727/1 ",
   "https://practice.geeksforgeeks.org/problems/cutted-segments1642/1",
   "https://practice.geeksforgeeks.org/problems/longest-common-subsequence-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/longest-repeating-subsequence2004/1",
   "https://practice.geeksforgeeks.org/problems/longest-increasing-subsequence-1587115620/1",
   "https://www.geeksforgeeks.org/space-optimized-solution-lcs/",
   "https://practice.geeksforgeeks.org/problems/lcs-of-three-strings0028/1",
   "https://practice.geeksforgeeks.org/problems/maximum-sum-increasing-subsequence4749/1",
   "https://www.geeksforgeeks.org/count-subsequences-product-less-k/",
   "https://practice.geeksforgeeks.org/problems/longest-subsequence-such-that-difference-between-adjacents-is-one4724/1 ",
   "https://www.geeksforgeeks.org/maximum-subsequence-sum-such-that-no-three-are-consecutive/",
   "https://practice.geeksforgeeks.org/problems/egg-dropping-puzzle-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/max-length-chain/1",
   "https://practice.geeksforgeeks.org/problems/largest-square-formed-in-a-matrix0806/1",
   "https://practice.geeksforgeeks.org/problems/pairs-with-specific-difference1533/1",
   "https://practice.geeksforgeeks.org/problems/path-in-matrix3805/1",
   "https://practice.geeksforgeeks.org/problems/maximum-difference-of-zeros-and-ones-in-binary-string4111/1",
   "https://practice.geeksforgeeks.org/problems/minimum-number-of-jumps-1587115620/1",
   "https://practice.geeksforgeeks.org/problems/minimum-cost-to-fill-given-weight-in-a-bag1956/1",
   "https://www.geeksforgeeks.org/minimum-removals-array-make-max-min-k/",
   "https://practice.geeksforgeeks.org/problems/longest-common-substring1452/1",
   "https://practice.geeksforgeeks.org/problems/reach-a-given-score-1587115621/1",
   "https://practice.geeksforgeeks.org/problems/bbt-counter4914/1",
   "https://practice.geeksforgeeks.org/problems/kadanes-algorithm-1587115620/1",
   "https://www.geeksforgeeks.org/smallest-sum-contiguous-subarray/",
   "https://practice.geeksforgeeks.org/problems/knapsack-with-duplicate-items4201/1",
   "https://practice.geeksforgeeks.org/problems/word-break1352/1",
   "https://www.geeksforgeeks.org/largest-independent-set-problem-dp-26/",
   "https://practice.geeksforgeeks.org/problems/subset-sum-problem2014/1",
   "https://www.geeksforgeeks.org/longest-palindromic-subsequence-dp-12/",
   "https://practice.geeksforgeeks.org/problems/count-palindromic-subsequences/1",
   "https://leetcode.com/problems/longest-palindromic-substring/",
   "https://practice.geeksforgeeks.org/problems/longest-alternating-subsequence5951/1",
   "https://www.geeksforgeeks.org/weighted-job-scheduling/",
   "https://www.geeksforgeeks.org/coin-game-winner-every-player-three-choices/",
   "https://www.geeksforgeeks.org/count-derangements-permutation-such-that-no-element-appears-in-its-original-position/",
   "https://www.geeksforgeeks.org/maximum-profit-by-buying-and-selling-a-share-at-most-twice/",
   "https://practice.geeksforgeeks.org/problems/optimal-strategy-for-a-game-1587115620/1",
   "https://www.geeksforgeeks.org/optimal-binary-search-tree-dp-24/",
   "https://practice.geeksforgeeks.org/problems/palindromic-patitioning4845/1",
   "https://practice.geeksforgeeks.org/problems/word-wrap1646/1",
   "https://practice.geeksforgeeks.org/problems/mobile-numeric-keypad5456/1",
   "https://practice.geeksforgeeks.org/problems/boolean-parenthesization5610/1",
   "https://www.geeksforgeeks.org/largest-rectangular-sub-matrix-whose-sum-0/",
   "https://www.geeksforgeeks.org/largest-area-rectangular-sub-matrix-equal-number-1s-0s/ ",
   "https://practice.geeksforgeeks.org/problems/maximum-sum-rectangle2948/1",
   "https://practice.geeksforgeeks.org/problems/maximum-profit4657/1",
   "https://practice.geeksforgeeks.org/problems/interleaved-strings/1",
   "https://leetcode.com/problems/maximum-length-of-pair-chain/",
 ];
  List bitUrl = [
    "https://practice.geeksforgeeks.org/problems/set-bits0143/1",
    "https://practice.geeksforgeeks.org/problems/finding-the-numbers0215/1",
    "https://practice.geeksforgeeks.org/problems/bit-difference-1587115620/1",
    "https://practice.geeksforgeeks.org/problems/count-total-set-bits-1587115620/1",
    "https://practice.geeksforgeeks.org/problems/power-of-2-1587115620/1",
    "https://practice.geeksforgeeks.org/problems/find-position-of-set-bit3706/1",
    "https://www.geeksforgeeks.org/copy-set-bits-in-a-range/",
    "https://www.geeksforgeeks.org/divide-two-integers-without-using-multiplication-division-mod-operator/",
    "https://www.geeksforgeeks.org/calculate-square-of-a-number-without-using-and-pow/#:~:text=Given%20an%20integer%20n%2C%20calculate,*%2C%20%2F%20and%20pow().&text=A%20Simple%20Solution%20is%20to%20repeatedly%20add%20n%20to%20result. ",
    "https://practice.geeksforgeeks.org/problems/power-set4302/1",
  ];
  bool value1= true;

  void showAlertDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
      return  infoCard();
    });
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.white,

        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Palette.darkBlue,),
          onPressed: ()=>Navigator.pop(context),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: Container(

          height: height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0,left: 30.0,bottom: 5),
                child: Row(
                  children: [
                      Text('PRACTICE',
                      style:TextStyle(
                          fontSize: 30,
                      color: Palette.darkOrange,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),),
                    SizedBox(
                      width: width/3,
                    ),

                    GestureDetector(
                      onTap: ()=> showAlertDialog(context),
                      child: Container(
                        width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Palette.darkOrange,
                            shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.sort_outlined,size: 20,color: Colors.yellowAccent,),
                          )),
                    )
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0,bottom: 20),
                child: Text('Solve Questions Daily',
                  style:TextStyle(
                    color: Palette.darkOrange,
                      fontSize: 18,
                      letterSpacing: 1),),
              ),


              Expanded(
                child: Container(
                  height: height,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      children: [

                       if(value1 == true ||value2 == true) Padding(
                padding: const EdgeInsets.only(left:30.0,bottom: 20),
                child: Text('ARRAY',
                  style: TextStyle(color: Colors.blue[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),),
              ),

                        if(value1 == true ||value2 == true)for(int i =0;i<array.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = ArrayUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(array[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value3 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('MATRIX',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),

                        if(value1 == true ||value3 == true)for(int i =0;i<matrix.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = matrixUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(matrix[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value4 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('STRING',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value4 == true)for(int i =0;i<string.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = stringUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(string[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value5 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('SEARCHING & SORTING',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value5 == true)for(int i =0;i<searchingSorting.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = searchingUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(searchingSorting[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value6 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('LINKEDLIST',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value6 == true)for(int i =0;i<linkedList.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = linkedListUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(linkedList[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value7 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('BINARY TREES',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value7 == true)for(int i =0;i<BinaryTrees.length;i++)
                          GestureDetector(
                          onTap: ()async{
                            String url = binarytreesUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(BinaryTrees[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value8 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('BINARY SEARCH TREES',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value8 == true)for(int i =0;i<BinarySearch.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = binarysearchTreeUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(BinarySearch[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value9 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('GREEDY',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value9 == true)for(int i =0;i<greedy.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = greedyUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(greedy[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value10 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('BACKTRACKING',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value10 == true)for(int i =0;i<backTracking.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = backTrackingUrl[i];
                                if (await canLaunch(url)) {
                                await launch(url);
                                } else {
                                throw 'Could not launch $url';
                                }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(backTracking[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),
    ]),
    )
    )
    ),
                        if(value1 == true ||value11 == true)Padding(
    padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
    child: Text('STACK & QUEUES',
    style: TextStyle(color: Colors.blue[800],
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),),
    ),
                        if(value1 == true ||value11 == true)for(int i =0;i<stackQueue.length;i++)GestureDetector(
    onTap: ()async{
    String url = stackUrl[i];
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    }},
    child: Padding(
    padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Palette.darkBlue,
    ),
    width:width,
    height:100,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
    child: Container(
    child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
    ),
    ),
    Container(
    width: width/2,
    child: Text(stackQueue[i],
    style: TextStyle(
    color: Colors.white,
    fontSize: 15
    ),),
    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value12 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('HEAP',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value12 == true)for(int i =0;i<heap.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = heapUrl[i];
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(heap[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value13 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('GRAPH',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value13 == true)for(int i =0;i<graph.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = graphUrl[i];
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(graph[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value14 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('TRIE',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value14 == true)for(int i =0;i<trie.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = trieUrl[i];
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(trie[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value15 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('DYNAMIC PROGRAMMING',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value15 == true)for(int i =0;i<dynamicProg.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = dynamicUrl[i];
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(dynamicProg[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                        if(value1 == true ||value16 == true)Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 20,top: 10),
                          child: Text('BIT MANIPULATION',
                            style: TextStyle(color: Colors.blue[800],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        if(value1 == true ||value16 == true)for(int i =0;i<BitManipulation.length;i++)GestureDetector(
                          onTap: ()async{
                            String url = bitUrl[i];
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }},
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10,bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Palette.darkBlue,
                                ),
                                width:width,
                                height:100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0,top: 8.0,bottom: 8.0,right: 15),
                                      child: Container(
                                        child: Image(image: AssetImage('assets/question.png'),width: 80,height: 80,),
                                      ),
                                    ),
                                    Container(
                                      width: width/2,
                                      child: Text(BitManipulation[i],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                        ),),
                                    ),

                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ));
  }
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool value7 = false;
  bool value8 = false;
  bool value9 = false;
  bool value10 = false;
  bool value11 = false;
  bool value12 = false;
  bool value13 = false;
  bool value14 = false;
  bool value15 = false;
  bool value16 = false;

  Widget infoCard( ) {
    if(value2||value3||value4||value5||value6||value7||value8||value9||value10||value11||value12||value13||value14||value15||value16){
      value1=false;
    }else{
      value1 = true;
    }
    return Center(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Palette.darkOrange.withOpacity(0.7),
          ),
            height: MediaQuery
                .of(context)
                .size
                .height / 2,
            width: MediaQuery
                .of(context)
                .size
                .width / 1.2,

            child: Scaffold(
              backgroundColor: Colors.white.withOpacity(0.3),
              body: Padding(
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Topics",
                          style: TextStyle(fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),

                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value2, onChanged: (val){
                            setState(() {
                              this.value2 = val;
                              print(val);
                            });
                          }),
                          Text('Array',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value3, onChanged: (value){
                            setState(() {
                              this.value3 = value;
                            });
                          }),
                          Text('Matrix',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value4, onChanged: (value){
                            setState(() {
                              this.value4 = value;
                            });
                          }),
                          Text('String',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value5, onChanged: (value){
                            setState(() {
                              this.value5 = value;
                            });
                          }),
                          Text('Searching & Sorting',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value6, onChanged: (value){
                            setState(() {
                              this.value6 = value;
                            });
                          }),
                          Text('LinkedList',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value7, onChanged: (value){
                            setState(() {
                              this.value7 = value;
                            });
                          }),
                          Text('Binary Trees',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value8, onChanged: (value){
                            setState(() {
                              this.value8 = value;
                            });
                          }),
                          Text('Binary Search Trees',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value9, onChanged: (value){
                            setState(() {
                              this.value9 = value;
                            });
                          }),
                          Text('Greedy',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value10, onChanged: (value){
                            setState(() {
                              this.value10 = value;
                            });
                          }),
                          Text('BackTracking',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value11, onChanged: (value){
                            setState(() {
                              this.value11 = value;
                            });
                          }),
                          Text('Stacks & Queues',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value12, onChanged: (value){
                            setState(() {
                              this.value12 = value;
                            });
                          }),
                          Text('Heap',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value13, onChanged: (value){
                            setState(() {
                              this.value13 = value;
                            });
                          }),
                          Text('Graph',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value14, onChanged: (value){
                            setState(() {
                              this.value14 = value;
                            });
                          }),
                          Text('Trie',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value15, onChanged: (value){
                            setState(() {
                              this.value15 = value;
                            });
                          }),
                          Text('Dynamic Programming',style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: value16, onChanged: (value){
                            setState(() {
                              this.value16 = value;
                            });
                          }),
                          Text('Bit Manipulation',style: TextStyle(fontSize: 20),)
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )),
    );
  }
}