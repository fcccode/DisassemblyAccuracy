push
mov
test
jz
mov
test
jz
push
call
add
mov
test
jz
push
call
add
push
call
add
pop
retn

push
push
push
call
add
test
jnz
retn

mov
xorps
mov
mov
mov
mov
mov
mov
movups
retn

push
mov
mov
cmp
jz
mov
cmp
jnz
push
push
call
push
call
mov
pop
retn

mov
call
push
push
mov
or
push
push
mov
xor
mov
test
cmovne
mov
mov
dec
cmp
ja
mov
jmp
mov
test
jz
cmp
jz
mov
cmp
jz
cmp
jz
inc
cmp
jnz
movsx
mov
cmp
jz
cmp
jnz
mov
inc
cmp
jnz
cmp
mov
jz
cmp
jz
inc
cmp
jnz
jmp
mov
mov
test
jz
push
call
add
push
call
add
mov
cmp
jz
mov
mov
jmp
push
push
call
add
test
jle
mov
jmp
mov
test
jz
push
push
call
add
test
jle
mov
jmp
xorps
movups
movzx
push
mov
call
mov
movzx
movzx
shl
or
movzx
shl
or
movzx
shl
or
push
call
push
push
push
mov
mov
call
mov
cmp
jz
mov
mov
jmp
cmp
jz
push
push
call
add
test
jz
push
mov
push
push
push
push
mov
call
mov
test
jns
push
push
call
push
push
push
call
push
push
push
push
push
call
push
push
push
push
push
call
add
jmp
push
push
call
add
push
push
push
call
mov
mov
test
jns
push
call
add
test
jz
push
push
call
mov
add
mov
jmp
push
call
add
mov
test
jnz
mov
test
jz
push
push
push
call
mov
add
test
jnz
mov
pop
pop
pop
pop
pop
retn

push
push
push
push
push
call
push
push
push
call
mov
add
jmp
push
push
push
push
push
call
mov
add
jmp
push
push
call
push
push
push
call
push
push
push
push
push
call
push
push
push
push
push
call
add
jmp
push
push
push
push
push
call
push
push
push
push
push
call
add
jmp
push
push
call
push
push
push
call
push
push
push
push
push
call
push
push
push
push
push
call
add
jmp
push
push
call
push
push
push
push
push
call
push
push
push
push
push
call
push
push
push
push
push
call
add
xor
jmp
mov
test
jz
push
push
push
call
add
pop
pop
pop
pop
pop
retn

cmp
jz
xor
retn

mov
mov
mov
mov
mov
retn

push
mov
test
jnz
xor
pop
retn

cmp
push
mov
jz
mov
cmp
jz
cmp
jnz
push
push
call
push
call
mov
test
jz
mov
test
jz
push
call
add
mov
test
jz
push
call
add
push
call
add
mov
mov
mov
pop
mov
pop
retn

push
mov
push
push
push
mov
mov
mov
call
mov
add
test
jnz
test
mov
pop
setnz
retn

mov
xor
mov
xorps
mov
test
mov
mov
setnz
mov
mov
movups
mov
pop
retn

mov
call
mov
xor
mov
mov
xor
push
mov
dec
push
mov
push
push
mov
cmp
ja
movzx
jmp
push
xor
mov
call
add
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jz
push
push
call
add
mov
pop
pop
pop
pop
mov
xor
call
add
retn

test
cmovne
cmp
jz
mov
test
jz
test
jnz
mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jnz
mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jnz
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

xor
cmp
jnz
movzx
mov
pop
pop
pop
pop
mov
xor
call
add
retn

test
jz
mov
xor
mov
pop
pop
pop
pop
mov
xor
call
add
retn

test
jz
mov
mov
test
jnz
mov
test
jz
push
call
add
push
call
add
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jnz
mov
test
jz
push
call
add
push
call
add
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jnz
movzx
push
movzx
push
movzx
push
movzx
push
push
push
push
call
mov
add
test
jz
push
call
add
push
call
add
mov
mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jnz
push
push
push
push
call
mov
add
test
jz
push
call
add
push
call
add
mov
mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

cmp
jz
test
jz
mov
mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

or
mov
pop
pop
pop
pop
mov
xor
call
add
retn

mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

mov
mov
mov
pop
pop
pop
pop
mov
xor
call
add
retn

mov
test
jz
push
push
push
push
call
add
mov
test
jz
push
push
push
push
call
add
push
push
push
push
call
push
push
push
call
add
mov
pop
pop
pop
pop
mov
xor
call
add
retn

mov
mov
mov
mov
pop
pop
pop
pop
xor
call
add
retn

mov
mov
push
mov
inc
test
jnz
sub
push
push
push
call
add
pop
retn

push
push
mov
xor
mov
cmp
jz
push
push
call
mov
add
test
jle
cmp
jz
push
call
push
push
push
push
call
push
push
mov
call
add
test
jg
push
call
add
test
jz
push
push
call
add
mov
pop
pop
retn

push
mov
mov
cmp
jz
push
push
call
add
test
jle
push
push
call
push
push
push
push
call
push
push
mov
call
add
test
jg
push
call
add
test
jz
push
push
call
add
mov
pop
pop
retn

push
push
call
mov
add
test
jz
push
push
push
push
call
add
test
jz
mov
pop
retn

push
call
add
xor
pop
retn

mov
retn

