mov
test
jnz
retn

push
mov
push
mov
test
jnz
push
push
call
mov
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

cmp
jz
push
push
mov
call
add
mov
pop
pop
retn

cmp
jnz
mov
mov
cmp
jnb
sub
mov
mov
pop
mov
pop
retn

mov
xor
cmp
jnb
xor
mov
inc
sub
mov
mov
cmp
jb
mov
sub
mov
cmp
jnz
mov
dec
cmp
jnz
mov
pop
mov
pop
retn

push
mov
test
jnz
pop
retn

push
mov
cmp
jnz
push
push
call
add
pop
pop
retn

cmp
jz
push
push
mov
call
add
cmp
jz
xor
cmp
setz
mov
pop
pop
retn

push
xor
cmp
jge
mov
mov
add
cmp
mov
sbb
inc
neg
jnz
pop
pop
mov
pop
retn

test
jz
mov
cmp
jnz
inc
cmp
jg
mov
jmp
push
push
call
add
test
jnz
pop
pop
pop
retn

mov
inc
mov
mov
pop
pop
pop
retn

push
mov
push
mov
test
jz
mov
test
jnz
push
push
call
add
mov
pop
pop
retn

mov
push
push
push
push
call
mov
add
test
jz
mov
inc
cmp
jg
mov
jmp
push
push
call
add
test
jnz
pop
pop
retn

mov
mov
mov
inc
pop
mov
pop
retn

mov
call
push
push
mov
xor
test
jnz
pop
or
pop
pop
retn

push
mov
cmp
jnz
pop
pop
xor
pop
pop
retn

push
push
call
mov
sub
push
mov
mov
push
push
shl
call
add
test
jnz
pop
pop
pop
or
pop
pop
retn

mov
sub
mov
js
mov
push
mov
push
push
call
mov
mov
imul
mov
add
sub
mov
mov
sub
mov
jns
mov
mov
test
jle
mov
cmp
jnz
dec
mov
mov
pop
pop
shr
pop
mov
pop
pop
retn

mov
call
push
mov
xorps
movlpd
test
jnz
or
pop
add
retn

mov
mov
push
mov
sub
js
mov
push
push
push
xor
or
push
push
call
sub
mov
jns
pop
pop
mov
pop
add
retn

