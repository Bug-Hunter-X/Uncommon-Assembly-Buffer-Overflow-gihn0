mov ecx, [esi] ; Get the array length
mov eax, [ebx]
cmp eax, ecx ; Check bounds
jge overflow_handler
mov eax, [ebx+ecx*4] ; Access array element safely
jmp end
overflow_handler:
; Handle buffer overflow error
end: