push
mov
mov
shr
movzx
mov
shr
push
mov
movzx
mov
or
mov
shr
or
movzx
or
pop
rol
pop
retn

mov
push
push
mov
xor
push
push
add
mov
sar
mov
add
and
add
inc
movzx
movzx
shl
or
shl
mov
movzx
movzx
shl
or
shl
mov
movzx
movzx
shl
or
shl
mov
movzx
movzx
shl
or
mov
cmp
jl
pop
pop
pop
pop
retn

mov
call
mov
xor
mov
push
mov
push
mov
push
xor
push
add
push
push
push
call
add
add
sub
jnz
push
push
call
push
push
push
call
mov
add
mov
mov
mov
pop
pop
mov
pop
pop
xor
call
add
retn

push
push
push
mov
mov
sar
and
jz
xor
cmp
setnle
dec
jmp
xor
xor
test
jle
mov
mov
push
mov
sub
mov
mov
sub
jnz
pop
test
jz
mov
mov
mov
and
mov
pop
pop
pop
retn

mov
call
mov
push
push
push
movzx
mov
push
mov
xor
movzx
xor
movzx
xor
movzx
xor
movzx
xor
movzx
xor
movzx
xor
movzx
xor
movzx
movzx
shl
or
mov
movzx
shl
or
movzx
shl
or
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
movzx
rol
mov
movzx
shl
or
movzx
shl
or
movzx
mov
shl
or
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
mov
mov
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
shr
movzx
mov
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
shr
movzx
mov
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
mov
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
mov
shr
pop
or
movzx
or
rol
xor
mov
shr
movzx
mov
shr
movzx
pop
mov
or
mov
shr
or
movzx
mov
or
rol
xor
mov
mov
shr
pop
mov
mov
shr
mov
mov
shr
mov
mov
mov
shr
mov
shr
shr
mov
mov
mov
pop
add
retn

mov
call
mov
xor
mov
mov
mov
mov
push
mov
push
mov
push
mov
mov
push
mov
xor
mov
mov
mov
cmp
jb
mov
add
push
push
push
call
mov
add
add
add
cmp
cmp
jnb
sub
push
push
xorps
push
movq
call
push
push
push
call
add
add
cmp
jnz
xorps
push
movq
push
push
call
add
mov
mov
sar
and
jz
xor
cmp
setnle
dec
jmp
xor
mov
xor
test
jle
push
push
push
call
add
mov
test
jz
mov
and
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
call
mov
xor
mov
mov
mov
push
mov
push
mov
push
push
xor
mov
mov
mov
mov
cmp
jb
mov
add
push
push
push
call
mov
add
add
add
cmp
cmp
jnb
sub
push
push
xorps
push
movq
call
push
push
push
call
add
add
cmp
jnz
xorps
push
movq
push
push
call
add
mov
mov
sar
and
jz
xor
cmp
setnle
dec
jmp
xor
mov
xor
test
jle
push
push
push
call
add
mov
test
jz
mov
and
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

push
push
call
push
push
push
call
add
retn

mov
mov
mov
mov
mov
mov
mov
mov
mov
retn

mov
mov
test
cmovne
mov
jmp
mov
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
movzx
mov
retn

mov
push
mov
movzx
shl
movzx
or
movzx
shl
or
movzx
shl
or
mov
movzx
shl
movzx
or
movzx
shl
or
movzx
shl
or
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
mov
pop
retn

mov
call
push
mov
push
push
mov
mov
push
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
add
mov
mov
shr
movzx
mov
shr
movzx
mov
movzx
or
mov
shr
shl
or
movzx
or
movzx
or
rol
movzx
shl
or
movzx
shl
mov
or
mov
xor
mov
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
mov
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
mov
rol
xor
mov
mov
shr
movzx
mov
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
mov
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
shr
movzx
mov
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
mov
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
shr
mov
mov
mov
shr
mov
mov
mov
shr
shr
pop
mov
mov
pop
shr
mov
shr
pop
mov
mov
mov
pop
add
retn

mov
call
push
mov
push
push
mov
mov
push
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
add
mov
mov
shr
movzx
mov
shr
movzx
mov
movzx
or
mov
shr
shl
or
movzx
or
movzx
or
rol
movzx
shl
or
movzx
shl
mov
or
mov
xor
mov
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
mov
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
mov
rol
xor
mov
mov
shr
movzx
mov
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
mov
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
mov
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
mov
shr
movzx
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
mov
or
mov
rol
xor
add
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
mov
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
shr
movzx
mov
mov
shr
movzx
or
mov
shr
or
movzx
mov
or
mov
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
mov
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
rol
xor
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
or
mov
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
rol
xor
add
mov
shr
movzx
mov
shr
movzx
mov
or
mov
shr
or
movzx
mov
or
mov
rol
xor
shr
mov
mov
mov
shr
mov
mov
mov
shr
shr
pop
mov
mov
pop
shr
mov
shr
pop
mov
mov
mov
pop
add
retn

mov
call
mov
xor
mov
mov
push
mov
push
mov
mov
mov
mov
mov
push
mov
test
jle
push
mov
sub
push
push
push
call
add
xor
add
mov
mov
mov
xor
mov
inc
cmp
jl
add
add
sub
jnz
pop
mov
pop
pop
pop
xor
call
add
retn

mov
call
mov
xor
mov
mov
mov
mov
mov
mov
push
mov
mov
mov
mov
test
jle
push
mov
push
push
sub
push
push
push
call
movzx
movzx
xor
add
movzx
mov
mov
movzx
xor
movzx
mov
mov
movzx
xor
movzx
mov
mov
movzx
xor
movzx
mov
mov
movzx
xor
movzx
mov
mov
movzx
xor
movzx
mov
mov
movzx
xor
movzx
mov
mov
movzx
xor
mov
mov
sub
jnz
pop
pop
pop
mov
pop
xor
call
add
retn

push
mov
test
jle
push
mov
push
mov
push
mov
sub
push
push
push
call
add
add
sub
jnz
pop
pop
pop
pop
retn

push
mov
test
jle
push
mov
push
mov
push
mov
sub
push
push
push
call
add
add
sub
jnz
pop
pop
pop
pop
retn

