push
mov
push
mov
push
mov
push
mov
push
push
push
push
call
mov
add
mov
test
jz
add
add
add
test
jns
test
jz
mov
add
cmp
mov
sbb
neg
add
jns
mov
add
cmp
mov
sbb
neg
add
jns
mov
add
cmp
mov
sbb
neg
add
jns
mov
add
cmp
mov
sbb
neg
add
jns
add
add
test
jnz
add
mov
mov
jns
sub
add
mov
mov
jns
add
mov
mov
jns
add
mov
mov
jns
mov
add
add
add
mov
js
pop
pop
pop
mov
pop
retn

test
jz
mov
add
cmp
mov
sbb
dec
neg
test
jle
mov
add
cmp
mov
sbb
dec
neg
test
jle
mov
add
cmp
mov
sbb
dec
neg
test
jle
mov
add
cmp
mov
sbb
dec
neg
test
jle
add
add
test
jnz
test
jle
mov
dec
mov
test
jle
sub
mov
dec
mov
test
jle
mov
dec
mov
test
jle
mov
dec
mov
test
jle
mov
add
dec
add
mov
test
jg
mov
pop
pop
pop
pop
retn

mov
call
mov
push
push
cdq
sub
mov
mov
mov
sar
push
push
push
mov
mov
push
push
mov
call
mov
mov
push
push
push
mov
call
mov
add
add
add
cmp
ja
jmp
push
push
push
push
call
push
push
push
jmp
push
push
push
push
call
push
push
push
push
call
mov
jmp
push
push
push
push
call
push
push
push
jmp
push
push
push
push
call
push
push
push
push
call
add
cmp
jnz
mov
push
push
push
call
mov
add
push
mov
add
push
push
call
add
jmp
mov
mov
push
push
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
push
push
call
mov
add
mov
mov
test
jz
push
push
push
push
mov
call
mov
add
jmp
mov
cmp
push
push
push
push
jz
call
jmp
call
mov
add
mov
add
test
jz
push
push
mov
push
push
call
push
push
mov
push
mov
push
call
mov
add
mov
jmp
xor
mov
mov
test
jle
cmp
jb
mov
cmp
ja
cmp
jnb
mov
and
jns
dec
or
inc
movaps
mov
movups
sub
mov
mov
sub
mov
mov
mov
movups
add
pandn
paddd
movups
movups
pandn
paddd
movups
cmp
jl
mov
mov
mov
cmp
jge
sub
mov
sub
mov
not
inc
mov
sub
jnz
mov
xor
mov
push
push
push
push
call
mov
add
add
cmp
push
push
push
push
jz
call
add
sub
jmp
call
add
add
push
push
push
push
call
push
mov
push
push
push
call
add
add
mov
add
cmp
push
push
push
push
jz
call
add
sub
jmp
call
add
add
test
jz
jle
mov
add
cmp
mov
sbb
neg
jnz
jmp
neg
mov
mov
sub
cmp
mov
sbb
neg
jnz
test
jz
jle
mov
add
cmp
mov
sbb
neg
jnz
pop
pop
pop
pop
add
retn

neg
mov
mov
sub
cmp
mov
sbb
neg
jnz
pop
pop
pop
pop
add
retn

mov
push
push
mov
push
mov
push
mov
push
cdq
push
sub
mov
push
sar
push
push
push
push
call
add
cmp
jl
mov
mov
add
push
push
push
push
push
call
mov
push
push
push
push
call
mov
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
call
add
pop
pop
pop
pop
retn

push
push
push
push
call
mov
push
push
add
push
push
call
mov
push
push
push
push
call
push
push
push
push
call
add
pop
pop
pop
pop
retn

push
mov
push
mov
push
mov
push
mov
push
push
push
push
call
dec
add
test
jle
add
add
push
push
push
push
call
dec
add
test
jle
push
push
push
push
call
dec
add
test
jle
push
push
push
push
call
dec
add
test
jle
push
push
push
push
call
dec
add
add
add
test
jg
pop
pop
pop
pop
retn

mov
call
push
mov
cmp
jge
mov
add
push
push
mov
add
push
push
push
call
add
pop
add
retn

mov
mov
push
mov
sub
push
push
push
mov
push
push
push
mov
call
mov
mov
mov
mov
sub
mov
push
push
mov
push
push
mov
call
add
mov
add
add
cmp
ja
jmp
mov
sub
push
push
push
push
push
call
mov
sub
push
push
push
push
jmp
mov
sub
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
mov
jmp
push
push
push
push
push
call
mov
sub
push
push
push
push
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
cmp
jnz
mov
push
push
push
call
push
push
push
call
mov
push
mov
add
mov
push
mov
push
add
push
push
call
mov
sub
sub
shl
push
mov
add
push
push
call
mov
add
jmp
shl
push
push
push
mov
push
mov
push
push
push
mov
call
push
push
push
push
push
push
push
call
mov
mov
cdq
add
sub
mov
mov
sar
sub
mov
sub
cmp
cmovg
test
jnz
push
mov
sub
add
sub
push
push
push
push
mov
push
push
call
mov
mov
sub
shl
push
jmp
mov
jle
push
add
mov
sub
mov
push
mov
sub
push
push
push
push
push
call
mov
sub
sub
shl
push
add
mov
push
push
call
mov
add
jmp
mov
push
add
push
push
mov
call
add
cmp
jge
cmp
jge
push
push
mov
push
push
push
call
add
jmp
mov
cdq
sub
sar
cmp
jl
cmp
jl
cmp
jz
cmp
jz
cdq
sub
sar
cmp
jge
push
sub
sub
push
mov
push
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
add
mov
cmp
mov
push
jz
push
push
push
call
add
sub
jmp
push
sub
sub
push
mov
push
push
push
push
push
call
jmp
push
push
push
call
add
add
mov
push
push
push
push
call
add
add
jz
mov
add
mov
cmp
jnb
add
jz
pop
pop
pop
pop
add
retn

mov
call
push
mov
mov
cdq
push
sub
mov
sar
mov
push
mov
push
mov
mov
cmp
jnz
test
jnz
test
jnz
push
push
push
call
add
pop
pop
pop
pop
add
retn

cmp
jge
mov
push
push
push
push
push
call
add
test
jns
imul
push
add
push
add
push
call
add
pop
pop
pop
pop
add
retn

mov
mov
mov
sub
add
push
push
push
push
mov
mov
call
mov
mov
mov
mov
sub
mov
mov
push
push
push
push
mov
call
add
mov
add
add
cmp
ja
jmp
mov
sub
push
push
push
push
push
call
mov
mov
sub
push
push
push
push
jmp
mov
jmp
mov
sub
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
mov
jmp
push
push
push
push
push
call
mov
mov
sub
push
push
push
push
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
xor
cmp
jnz
test
jnz
cmp
jnz
test
jnz
push
push
push
call
add
jmp
xorps
movups
movups
push
mov
push
push
call
mov
add
add
push
mov
add
mov
push
push
call
add
jmp
cmp
jnz
test
jnz
cmp
jnz
test
jnz
push
push
push
call
jmp
push
push
push
call
mov
add
push
push
push
call
mov
add
add
push
mov
add
mov
push
push
call
add
jmp
test
jnz
push
push
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
call
add
push
push
push
push
push
mov
push
push
call
push
push
push
add
push
mov
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
add
mov
cmp
push
jz
push
push
push
call
mov
add
sub
jmp
push
push
push
call
mov
add
add
mov
push
add
push
push
push
call
add
add
jz
mov
add
mov
add
add
mov
cmp
jnb
add
jz
pop
pop
pop
pop
add
retn

push
push
push
mov
push
mov
cmp
jge
mov
mov
mov
mov
mov
jmp
mov
mov
mov
mov
test
jg
push
push
push
push
call
add
pop
pop
pop
pop
retn

push
push
push
push
call
dec
mov
add
test
jle
mov
add
add
add
mov
push
add
push
push
push
call
dec
mov
add
test
jle
push
push
push
push
call
dec
mov
add
test
jle
push
mov
push
push
add
push
call
dec
mov
add
test
jle
push
mov
push
push
add
push
call
mov
dec
mov
add
add
add
add
mov
test
jg
pop
pop
pop
pop
retn

mov
call
mov
push
push
mov
mov
mov
mov
test
jz
test
jz
push
mov
push
mov
call
mov
add
mov
cmp
jz
mov
cmp
jz
mov
jmp
push
call
mov
add
test
jz
mov
mov
mov
xor
push
mov
mov
sub
jnz
cmp
jnz
cmp
jl
mov
jmp
push
push
call
mov
add
mov
test
jz
mov
push
push
push
call
add
jmp
cmp
jl
cmp
jl
cmp
ja
test
js
push
call
add
jmp
xor
cmp
jnz
push
call
add
push
mov
shl
mov
add
mov
call
mov
add
test
jz
mov
cmp
jg
cmp
jg
mov
add
mov
cmp
jg
mov
jmp
push
push
call
mov
add
mov
test
jz
cmp
jg
mov
jmp
push
push
call
add
test
jz
push
mov
sub
push
sub
push
push
mov
push
mov
push
push
call
mov
add
mov
jmp
mov
shl
mov
cmp
jg
mov
jmp
push
push
call
mov
add
mov
test
jz
cmp
jg
mov
jmp
push
push
call
add
test
jz
push
mov
sub
push
sub
push
push
mov
push
mov
push
push
call
mov
add
mov
jmp
mov
cmp
jg
mov
jmp
push
push
call
mov
add
mov
test
jz
push
mov
push
push
push
push
call
add
mov
test
jle
mov
mov
test
jnz
dec
test
jg
mov
mov
cmp
jz
push
push
call
add
mov
pop
push
call
mov
add
pop
pop
pop
add
retn

push
push
call
add
mov
pop
pop
add
retn

