cmp
mov
push
push
mov
mov
cmovne
mov
mov
cmp
jnz
cmp
jz
push
push
push
call
mov
add
cmp
jnz
push
push
call
add
mov
pop
pop
pop
pop
retn

push
push
call
add
test
jnz
push
push
call
add
test
jnz
mov
mov
mov
push
push
push
push
call
add
test
jz
push
push
call
add
test
js
push
push
push
call
add
test
jz
push
push
call
add
test
js
push
push
push
call
add
test
jz
sub
jz
push
push
call
add
test
js
mov
jmp
push
jmp
mov
push
push
push
push
call
add
test
jz
sub
jz
push
push
call
add
test
jns
pop
pop
pop
mov
pop
retn

push
push
push
push
push
call
add
pop
pop
pop
xor
pop
retn

push
push
push
push
push
call
add
xor
pop
pop
retn

mov
call
mov
push
xor
test
js
cmp
jnz
cmp
jg
cdq
and
push
push
sar
and
jns
dec
or
inc
mov
push
mov
shl
push
push
mov
call
mov
add
test
jnz
push
push
push
push
push
call
add
mov
pop
pop
pop
add
retn

test
jnz
push
push
call
add
mov
pop
add
retn

push
push
call
add
mov
call
xorps
movsd
push
push
call
mov
add
push
push
test
jz
call
add
cmp
jz
cmp
jnz
xor
test
jle
push
push
call
add
test
js
mov
cmp
jb
test
jle
mov
mov
jmp
cmp
jnb
mov
jmp
cmp
jnb
mov
inc
cmp
jl
jmp
call
add
test
jle
mov
test
js
mov
jz
test
jnz
or
mov
jmp
dec
mov
shl
or
jmp
movzx
bts
mov
mov
not
and
cmp
jz
or
push
push
push
call
add
mov
test
cmovne
push
push
call
push
call
add
mov
pop
pop
pop
pop
add
retn

push
push
push
push
push
call
add
xor
pop
add
retn

push
push
push
push
push
call
add
retn

push
push
push
call
add
retn

push
push
push
call
add
retn

push
push
push
push
push
call
add
retn

push
push
push
push
push
call
add
retn

jmp
