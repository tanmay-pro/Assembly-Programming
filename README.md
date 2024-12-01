# System-Level Algorithms in Assembly  

This repository contains solutions to various system-level programming challenges implemented in ARM Assembly. These solutions demonstrate the application of low-level programming concepts, including memory management, data manipulation, and hardware-software optimization.  

## Features  

### Algorithms and Implementations:
1. **Sorting Algorithms**  
   - **Bubble Sort**  
   - **Selection Sort**  
   - **Insertion Sort**  
   - **Odd-Even Sort**  
   Each algorithm operates on 32 signed integers (16 bits) stored in the memory's data section.

2. **Search Algorithms**  
   - **Sequential Search**: Locates a given key `X` in a list of 32 signed integers and reports the number of iterations.  
   - **Binary Search**: Optimized search for a given key `X` with performance metrics.

3. **Matrix Manipulation**  
   - 8x8 matrix rotation by 90 degrees, both clockwise and anticlockwise, performed without using extra memory.

4. **Character Frequency Count**  
   - Count the frequency of lowercase (`a-z`) and uppercase (`A-Z`) alphabets in a 32-character array.

5. **Hamming Distance Calculation**  
   - Compute the Hamming distance for:
     - Two 16-bit signed integers.  
     - Two 32-bit unsigned integers.  

## Prerequisites  
- **Assembler and Simulator**: Ensure an appropriate ARM Assembly development environment is installed (e.g., ARM Keil, QEMU).  
- **Basic Understanding**: Familiarity with Assembly language syntax and concepts like registers, memory, and instruction sets.