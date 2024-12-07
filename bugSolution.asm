mov ecx, array_size ; Load the size of the array into ecx
mov eax, [ebx+ecx*4] ; Accessing the array
jmp check_bound
array_size: dw 10 ; Size of the array
check_bound:
cmp ecx, 0 ; Check if the index is within the bound
jge check_bound2
jmp error_handling ; Jump to error handling if the index is out of bound
check_bound2:
 cmp ecx, array_size ; Check if the index is out of bound
jle access_array ; Jump to access array if the index is within the bound
jmp error_handling ; Jump to error handling if the index is out of bound
access_array:
mov eax, [ebx+ecx*4] ; Access the array element
jmp end
error_handling:
; Handle the error appropriately. This could include printing an error message, exiting the program, or taking other corrective action
jmp end
end: