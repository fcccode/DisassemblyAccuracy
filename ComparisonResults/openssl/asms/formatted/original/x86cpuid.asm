push
push
push
push
xor
pushfd
pop
mov
xor
push
popfd
pushfd
pop
xor
xor
bt
jnc
mov
mov
cpuid
mov
xor
cmp
setnz
mov
cmp
setnz
or
cmp
setnz
or
jz
cmp
setnz
mov
cmp
setnz
or
cmp
setnz
or
jnz
mov
cpuid
cmp
jb
mov
mov
cpuid
or
and
cmp
jb
mov
cpuid
movzx
inc
mov
xor
cpuid
bt
jnc
shr
and
cmp
ja
and
jmp
cmp
jb
mov
mov
xor
cpuid
mov
cmp
mov
jb
mov
mov
cpuid
mov
shr
and
mov
xor
cpuid
and
cmp
jnz
or
and
cmp
jnz
or
bt
jnc
and
cmp
jz
or
shr
cmp
ja
and
and
and
mov
or
bt
jnc
xor
and
cmp
jz
cmp
jz
and
and
and
mov
and
mov
mov
pop
pop
pop
pop
retn

xor
xor
bt
jnc
rdtsc
retn

bt
jnc
and
jnz
pushfd
pop
bt
jnc
rdtsc
push
push
hlt
rdtsc
sub
sbb
add
retn

xor
xor
retn

pushfd
pop
bt
jnc
mov
mov
xor
mov
jmp
inc
cmp
jz
retn

xor
xor
retn

xor
xor
mov
bt
jnc
and
cmp
jnz
pxor
pxor
pxor
pxor
pxor
pxor
pxor
pxor
retn

mov
mov
push
mov
jnz
mov
pop
retn

push
mov
sub
mov
mov
mov
mov
mov
mov
mov
mov
mov
mov
mov
mov
mov
mov
call
mov
pop
retn

mov
mov
xor
cmp
jnb
cmp
jz
mov
sub
jnz
retn

test
jz
mov
jmp
mov
test
jnz
cmp
jnz
retn

mov
jc
loop
cmp
cmove
retn

mov
jc
loop
cmp
cmove
retn

