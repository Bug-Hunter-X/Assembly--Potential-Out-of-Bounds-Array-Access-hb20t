This repository contains an example of a common error in assembly programming: out-of-bounds array access. The `bug.asm` file demonstrates the problematic code, while `bugSolution.asm` provides a corrected version with bounds checking.  The error occurs when an array index is not validated before being used to access memory. This can lead to segmentation faults or other undefined behavior. The solution implements a check to ensure the index is within the valid range before accessing the array element. 