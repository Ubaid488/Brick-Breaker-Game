[org 0x100]
jmp start;;;top,left,bottom,right
brick1: dw 2,0,2,10
brick2:dw 2,12,2,22
brick3:dw 2,24,2,34
brick4:dw 2,36,2,45
brick5:dw 2,47,2,57
brick6:dw 2,59,2,69
brick7:dw 2,71,2,79
brick8:dw 5,0,5,10
brick9:dw 5,12,5,22
brick10:dw 5,24,5,34
brick11:dw 5,36,5,45
brick12:dw 5,47,5,57
brick13:dw 5,59,5,69
brick14:dw 5,71,5,79
brick15:dw 8,0,8,10
brick16:dw 8,12,8,22
brick17:dw 8,24,8,34
brick18:dw 8,36,8,45
brick19:dw 8,47,8,57
brick20:dw 8,59,8,69
brick21:dw 8,71,8,79
brickflag1:dw 1,1,1,1,1,1,1
brickflag2:dw 1,1,1,1,1,1,1
brickflag3:dw 1,1,1,1,1,1,1
bar: dw 20,33,20,51
oldisr:dw 0,0
timeroldisr:dw 0,0
spacesforbar:dw 0,0,0,0
ball:dw 0x70fe
ballspeed:dw 3
fireflag:dw 0
firetime:dw 0
ballposition: dw 12,36
fixballposition:dw 12,36
fixbarposition:dw 20,33,20,51
down:dw 1
l_t_r:dw 1
timedelay:dw 0
currentlife:dw 3
loss:dw 0
levelgo:dw 0
timeremstr:db 'Time Remaining :'
pointstr:db 'Points :'
liveremstr:db 'Remaining Lives :'
livetotalstr:db 'Total Lives : 3'
scorestr:db 'Your Score is: '
pausestr:db 'Press "P" to pause and "Q" to quit the game'
gamepaused:db 'Game paused'
nogamepaused:db '           '   
timet:dw 120
timecounter:dw 0
points:dw 0
addp:dw 50
keywait:dw 1
factor:dw 1
string: db '*******-:THE END:-********'
string1:db 'Thank you for playing <3'
stringst: db '*******WELCOME TO BRICK BREAKER********'
stringst1:db 'Created with <3 by Ubaidullah and Saad'
stringst2:db 'Press "I" for instructions or any other key to continue....'
playagain:db 'Do you want to play the next level?'
confirm: db 'Press "Y" for yes and any other key for no'
level1: db 'Level 1'
level2:db 'Level 2'
ispause:dw 0
isquit:dw 0
ispowerup:dw 0
powert:dw 0
powerupnum:dw 0
fireballnum:dw 0
towerdown:dw 1,1,1,1,1,1,1,1,0,1,0,1,0,1,1,0,1,0,1,0,1
towerup:dw  1,0,1,0,1,0,1,1,0,1,0,1,0,1,1,1,1,1,1,1,1
void1:dw   1,0,1,0,1,0,1, 1,0,1,0,1,0,1, 1,0,1,0,1,0,1
void2:dw 0,1,0,1,0,1,0,0,1,0,1,0,1,0,0,1,0,1,0,1,0
instruction3:db '******INSTRUCTIONS******'
instruction4:dw  '-The bar moves left and right only by press keys on keyboard.Use left'                          
instruction140:dw 'and right keys for bar navigation.A ball hits the bar and then move'   
instruction141:dw  'upward (straight up, left or right) direction and breaks the bricks.'
instruction5:dw  '-This game has one player and two levels.This game ends is 2 minutes.'
instruction6:dw '-If the ball does not hit the bar, it falls down (to the end of screen)'      
instruction61:dw 'and the player loses one life.The player has a total of three lives.'
instruction7:dw 'Game controls are following:' 
instruction8:dw                 '- Move paddle: to rotate the bar on the screen'
instruction10:dw                 '- Press P to pause and q to end the game.'
instruction11:dw '*******FEATURES********'
instruction12:dw                 '- 2 amazing levels-'
instruction13:dw                 '-21 bricks models with 5 different patterns.'
instruction14:dw                 '-Easy to play but difficult to master.'
instruction15:dw                 '******Created with <3******'
instruction16:dw                 '**Press Any Key to go back**'
instruction:
mov ax,0x3400

push ax

mov ax,200 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction3 ;string name
push ax
mov ax,24 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,490 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction4 ;string name
push ax
mov ax,69 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,650 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction140 ;string name
push ax
mov ax,67 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,810 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction141 ;string name
push ax
mov ax,68;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,970 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction5 ;string name
push ax
mov ax,69 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,1130 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction6 ;string name
push ax
mov ax,72 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,1290 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction61 ;string name
push ax
mov ax,68 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,1770 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction7 ;string name
push ax
mov ax,29 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,1930 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction8 ;string name
push ax
mov ax,46 ;length
push ax
call printstr

mov ax,0x3400

push ax

mov ax,2090 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction10 ;string name
push ax
mov ax,42 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,2410;position on the screen 3998 is the last postion
push ax
mov ax,instruction11 ;string name
push ax
mov ax,24 ;length
push ax
call printstr
mov ax,0x3400

push ax

mov ax,2570 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction12 ;string name
push ax
mov ax, 19;length
push ax
call printstr
mov ax,0x3400

push ax
mov ax,2730 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction13 ;string name
push ax
mov ax,43 ;length
push ax
call printstr
mov ax,0x3400

push ax
mov ax,2890 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction14 ;string name
push ax
mov ax,38 ;length
push ax
call printstr
mov ax,0x3400

push ax
mov ax,  3210;position on the screen 3998 is the last postion
push ax
mov ax,instruction15 ;string name
push ax
mov ax,28 ;length
push ax
call printstr
mov ax,0x3400
push ax
mov ax, 3370 ;position on the screen 3998 is the last postion
push ax
mov ax,instruction16 ;string name
push ax
mov ax,28 ;length
push ax
call printstr

ret

printlives:
push ax
push bx
push es
push di
mov ax,0xb800
mov di,3960
mov es,ax
cmp word[cs:currentlife],2
jne agla
mov ax,0x7032
jmp endi
agla:cmp word[cs:currentlife],1
jne agla1
mov ax,0x7031
jmp endi
agla1:
mov ax,0x7030
endi:
mov [es:di],ax
pop di
pop es
pop bx
pop ax
ret 
genpowerup:
push ax
push bx
push cx
push dx
calcula:
mov ax,0
mov ah,0x2c
int 0x21
and dx,0xff00
shr dx,8
mov ax,dx
mov bl,21
div bl
mov bl,ah
mov cx,bx
shl bx,1
cmp word[cs:brickflag1+bx],1
jne calcula
shr bx,1
mov [cs:powerupnum],bx
shl bx,3
mov ax,0xc724
push ax 
push word[brick1+bx]
push word[brick1+bx+2]
push word[brick1+bx+4]
push word[brick1+bx+6]
call block

  calcula2:
  mov ax,0
  mov ah,0x2c
  int 0x21
  and dx,0xff00
  shr dx,8
  mov ax,dx
  add ax,5
  mov bl,21
  div bl
  mov bl,ah
  shl bx,1
  cmp word[cs:brickflag1+bx],1
 jne calcula2
 shr bx,1
 cmp [cs:powerupnum],bx
 je calcula2
 mov [cs:fireballnum],bx
 shl bx,3
 mov ax,0xa4ea
 push ax 
 push word[brick1+bx]
 push word[brick1+bx+2]
 push word[brick1+bx+4]
 push word[brick1+bx+6]
 call block



pop dx
pop cx
pop bx
pop ax
ret
makingbricks:
push ax
push bx
push cx
push si
mov cx,7
mov bx,0
mov si,0
vb:
mov ax,0x6020
push ax 
push word[brickflag1+si]
push word[brick1+bx]
push word[brick1+2+bx]
push word[brick1+4+bx]
push word[brick1+6+bx]
call bricking
add bx,8
add si,2
loop vb

mov cx,7
mov bx,0
mov si,0
vb1:
mov ax,0x5020
push ax 
push word[brickflag2+si]
push word[brick8+bx]
push word[brick8+2+bx]
push word[brick8+4+bx]
push word[brick8+6+bx]
call bricking
add bx,8
add si,2
loop vb1

mov cx,7
mov bx,0
mov si,0
vb2:
mov ax,0x1020
push ax 
push word[brickflag3+si]
push word[brick15+bx]
push word[brick15+2+bx]
push word[brick15+4+bx]
push word[brick15+6+bx]
call bricking
add bx,8
add si,2
loop vb2


pop si
pop cx
pop bx
pop ax
ret 


bricking:
push bp
mov bp,sp
push ax
mov ax,[bp+12]
cmp ax,0
je dontprint
mov ax,[bp+14]
push ax
mov ax,[bp+10]
push ax
mov ax,[bp+8]
push ax
mov ax,[bp+6]
push ax
mov ax,[bp+4]
push ax
call block

dontprint:
pop bp
pop ax
ret 12

clrscr:
push es
push ax
push di
mov ax, 0xb800
mov es, ax ; point es to video base
mov di, 0 ; point di to top left column
nextloc: mov word [es:di], 0x0720 ; clear next char on screen
add di, 2 ; move to next screen location
cmp di, 4000 ; has the whole screen cleared
jne nextloc ; if no clear next position
pop di
pop ax
pop es
ret

printstr: 
push bp
mov bp, sp
push es
push ax
push cx
push si
push di
mov ax, 0xb800
mov es, ax ; point es to video base
mov di, [bp+8] ; point di to given coordinate
mov si, [bp+6] ; point si to string
mov cx, [bp+4] ; load length of string in cx
mov ax,[bp+10]
nextchar: mov al, [si] ; load next char of string
mov [es:di], ax ; show this char on screen
add di, 2 ; move to next screen location
add si, 1 ; move to next char in string
loop nextchar ; repeat the operation cx times
pop di
pop si
pop cx
pop ax
pop es
pop bp
ret 8

printing:
push ax
push bx
mov ax,0x7000
push ax
mov ax,3840
push ax
mov bx,timeremstr
push bx
mov ax,16
push ax
call printstr
mov ax,0x7000
push ax
mov ax,3890
push ax
mov bx,pointstr
push bx
mov ax,8
push ax
call printstr
mov ax,0x7000
push ax
mov ax,3550
push ax
mov bx,pausestr
push bx
mov ax,43
push ax
call printstr
mov ax,0x7000
push ax
mov ax,3922
push ax
mov bx,liveremstr
push bx
mov ax,17
push ax
call printstr
mov ax,0x7000
push ax
mov ax,3528
push ax
cmp word[cs:levelgo],0
jne le2
mov bx,level1
push bx
jmp le3
le2:
mov bx,level2
push bx
le3:
mov ax,7
push ax
call printstr
mov ax,0x7000
push ax
mov ax,3964
push ax
mov bx,livetotalstr
push bx
mov ax,15
push ax
call printstr

pop ax
pop bx
ret
printnum: 
push bp
mov bp, sp
push es
push ax
push bx
push cx
push dx
push di
mov ax, 0xb800
mov es, ax ; point es to video base
mov ax, [bp+4] ; load number in ax
mov bx, 10 ; use base 10 for division
mov cx, 0 ; initialize count of digits
nextdigit: mov dx, 0 ; zero upper half of dividend
div bx ; divide by 10
add dl, 0x30 ; convert digit into ascii value
push dx ; save ascii value on stack
inc cx ; increment count of values
cmp ax, 0 ; is the quotient zero
jnz nextdigit ; if no divide it again
mov di, [bp+6]
nextpos: 
pop dx ; remove a digit from the stack
mov ax,[bp+8]
mov dh,al   ; use normal attribute
mov [es:di], dx ; print char on screen
add di, 2 ; move to next screen location
loop nextpos ; repeat for all digits on stack
pop di
pop dx
pop cx
pop bx
pop ax
pop es
pop bp
ret 6

printatstartnum:
push ax
push es
push di
mov ax,0xb800
mov es,ax
mov di,3876
mov word[es:di],0x7030
add di,2
cmp word[cs:levelgo],0
jne p1
mov word[es:di],0x7032
add di,2
jmp p2
p1:
mov word[es:di],0x7031
add di,2
p2:
mov word[es:di],0x703a
add di,2
mov word[es:di],0x7030
add di,2
mov word[es:di],0x7030
mov ax,0x0070
push ax
mov ax,3910
push ax
push word[cs:points]
call printnum
mov ax,0x0070
push ax
mov ax,3960
push ax
push word[cs:currentlife]
call printnum
pop di
pop es
pop ax
ret 
allbricksbroken:
mov ax,[brickflag1]
or ax,[brickflag1+2]
or ax,[brickflag1+4]
or ax,[brickflag1+6]
or ax,[brickflag1+8]
or ax,[brickflag1+10]
or ax,[brickflag1+12]
or ax,[brickflag1+14]
or ax,[brickflag1+16]
or ax,[brickflag1+18]
or ax,[brickflag1+20]
or ax,[brickflag1+22]
or ax,[brickflag1+24]
or ax,[brickflag1+26]
or ax,[brickflag1+28]
or ax,[brickflag1+30]
or ax,[brickflag1+32]
or ax,[brickflag1+34]
or ax,[brickflag1+36]
or ax,[brickflag1+38]
or ax,[brickflag1+40]
ret
delay:
 push cx 
push ax 
mov ax,3 
agan: 
mov cx,0xffff 
again: 
loop again
 dec ax 
cmp ax,0 
jne again
 pop ax 
pop cx
 ret
backnborder:
push es
push ax
push di
push cx
push si
mov ax,0xb800
mov es,ax
mov cx,2000
mov di,0
mov ax,0x3020
cld
rep stosw

mov di,0
mov cx,80
mov ax,0x7020
cld
rep stosw

mov di,3840
mov cx,80
cld
rep stosw

mov cx,24
mov si,156
mov di,0
b:
mov [es:di],ax
add di,2
mov [es:di],ax
add di,158
mov [es:si],ax
add si,2
mov [es:si],ax
add si,158
loop b




pop si
pop cx
pop di
pop ax
pop es
ret

printstrforend:
push bp
mov bp , sp
pusha 
push es
mov ax , 80
mul byte[bp + 8]		; y posoiton * 80
add ax , [bp + 10]		; adding x position
shl ax , 1				; *2
mov di , ax
mov si , [bp + 6]		;pointing to data
mov ax , 0xb800
mov es , ax
mov cx , [bp + 4]
mov ah , 0x34

next:
call delay
cld
lodsb 
stosw
loop next

pop es
popa 
pop bp
ret 8

ending:
push ax
mov ax,22
push ax; +10
mov ax,3
push ax; +8
push string; +6
mov ax,26
push ax; +4
call printstrforend
mov ax,0x3400
push ax
mov ax,1648
push ax
mov ax,scorestr
push ax
mov ax,15
push ax
call printstr
mov ax,0x0034
push ax
mov ax,1678
push ax
push word[cs:points]
call printnum
mov ax,22
push ax
mov ax,13
push ax
push string1; +6
mov ax,24
push ax; +4
call printstrforend
pop ax
ret
backonly:
push es
push ax
push di
push cx
mov ax,0xb800
mov es,ax
mov cx,2000
mov di,0
mov ax,0x7020
cld
rep stosw
pop cx
pop di
pop ax
pop es
ret 

opening:
push ax
mov ax,22
push ax; +10
mov ax,3
push ax; +8
push stringst; +6
mov ax,39
push ax; +4
call printstrforend
mov ax,22
push ax; +10
mov ax,10
push ax; +8
push stringst1; +6
mov ax,38
push ax; +4
call printstrforend
mov ax,12
push ax
mov ax,17
push ax
push stringst2
mov ax,59
push ax
call printstrforend
pop ax
ret
initializeblock:
push ax
push bx 
push cx
push dx

mov ax,0
mov ah,0x2c
int 0x21
and dx,0xff00
shr dx,8
mov ax,dx
mov bl,5
div bl
mov bx,0
mov cx,21
cmp ah,1
jne ini1
az1:
mov ax,[cs:towerup+bx]
and [cs:brickflag1+bx],ax
add bx,2
loop az1
jmp ini4
ini1:
cmp ah,2
jne ini2
az2:
mov ax,[cs:towerdown+bx]
and [cs:brickflag1+bx],ax
add bx,2
loop az2
jmp ini4
ini2:
cmp ah,3
jne ini3
az3:
mov ax,[cs:void1+bx]
and [cs:brickflag1+bx],ax
add bx,2
loop az3
jmp ini4
ini3:
cmp ah,4
jne ini4
az4:
mov ax,[cs:void2+bx]
and [cs:brickflag1+bx],ax
add bx,2
loop az4
ini4:

pop dx
pop cx
pop bx
pop ax
ret

start:
call clrscr
call backnborder
call opening

mov ah,0
int 0x16
cmp al,'i'
je inst
cmp al,'I'
jne go1
inst:
call backnborder
call instruction
mov ah,0
int 0x16
jmp start
go1:
call clrscr
call backonly
call initializeblock
call makingbricks
call genpowerup
call printing
call printatstartnum
xor ax, ax
mov es, ax ; point es to IVT base
mov ax, [es:9*4]
mov [oldisr], ax ; save offset of old routine
mov ax, [es:9*4+2]
mov [oldisr+2], ax ; save segment of old routine
mov ax, [es:8*4]
mov [timeroldisr], ax ; save offset of old routine
mov ax, [es:8*4+2]
mov [timeroldisr+2], ax ; save segment of old routine

cli ; disable interrupts
mov word [es:9*4], moving ; store offset at n*4
mov [es:9*4+2], cs ; store segment at n*4+2
mov word [es:8*4],timer; store offset at n*4
mov [es:8*4+2], cs ; store segment at n*4+2
 
sti ; enable interrupts

l1:
cli
mov ax,[fixballposition]
mov [ballposition],ax
mov ax,[fixballposition+2]
mov [ballposition+2],ax
mov ax,[fixbarposition]
mov [bar],ax
mov ax,[fixbarposition+2]
mov [bar+2],ax
mov ax,[fixbarposition+4]
mov [bar+4],ax
mov ax,[fixbarposition+6]
mov [bar+6],ax
sti
push word[cs:ball]
call ballprint

mov ax,0x4020
push ax
push word[bar]
push word[bar+2]
push word[bar+4]
push word[bar+6]

call block
mov word[keywait],0
mov ah,0
int 0x16
mov word[keywait],1

infinite:
cmp word[isquit],0
je noquitall
jmp e
noquitall:
cmp word[loss],0
jne noinfi
call allbricksbroken
cmp ax,0
jne infinite
jmp e
noinfi:
mov bx,0x7020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]

call block

mov ax,0x7020
push ax
call ballprint

mov word[loss],0
mov word[down],1
mov word[factor],1
cmp word[currentlife],0
jne l1
e:
cli
mov ax,[oldisr]
mov word [es:9*4], ax
mov ax,[oldisr+2]
mov [es:9*4+2], ax
mov ax,[timeroldisr]
mov word [es:8*4],ax
mov ax,[timeroldisr+2]
mov [es:8*4+2], ax 


sti

cmp word[cs:isquit],1
jne quitalla
jmp quitall
quitalla:
mov ah,0
int 0x16


call clrscr

cmp word[cs:timet],0
je noadd
cmp word[cs:currentlife],0
je noadd
mov ax,[cs:timet]
add [cs:points],ax
noadd:
call backnborder
cmp word[cs:levelgo],0
je go
jmp quitall
go:
cmp word[cs:currentlife],0
jne yeslevel
jmp quitall
yeslevel:
mov ax,0x3400
push ax
mov ax,1970
push ax
mov ax,playagain
push ax
mov ax,35
push ax
call printstr
mov ax,0x3400
push ax
mov ax,2280
push ax
mov ax,confirm
push ax
mov ax,42
push ax
call printstr
mov ah,0
int 0x16

cmp al,0x59
je qq1
cmp al,0x79
je qq1
jmp quitall
qq1:
mov bx,0
iniflag:
mov word[cs:brickflag1+bx],1
add bx,2
cmp bx,42
jne iniflag

add word[cs:bar+2],4
sub word[cs:bar+6],4
add word[cs:fixbarposition+2],4
sub word[cs:fixbarposition+6],4

mov word[cs:oldisr],0
mov word[cs:oldisr+2],0
mov word[cs:timeroldisr],0
mov word[cs:timeroldisr+2],0
mov word[cs:spacesforbar],0
mov word[cs:spacesforbar+2],0
mov word[cs:spacesforbar+4],0
mov word[cs:spacesforbar+6],0
mov word[cs:ballspeed],2
mov word[cs:fireflag],0
mov word[cs:fireballnum],0
mov word[cs:firetime],0
mov word[cs:down],1
mov word[cs:l_t_r],1
mov word[cs:timedelay],0
cmp word[cs:currentlife],3
je noinclife
inc word[cs:currentlife]
noinclife:
mov word[cs:loss],0
mov word[cs:timet],60
mov word[cs:timecounter],0
mov word[cs:keywait],1
mov word[cs:factor],1
mov word[cs:ispause],0
mov word[cs:isquit],0
mov word[cs:ispowerup],0
mov word[cs:powert],0
mov word[cs:powerupnum],0
add word[cs:addp],50
mov word[cs:ball],0x70fe

;wush



inc word[cs:levelgo]
jmp go1



quitall:

call clrscr
call backnborder
call ending
mov ah,0
int 0x16
call clrscr
mov ax, 0x4c00 
int 0x21

printtime:
push ax
push bx
push es
push di
mov ax,0xb800
mov es,ax
mov di,3876
mov ax,0x7030
mov [es:di],ax
add di,2
mov ax,[cs:timet]
mov bx,0
cmp word[cs:timet],60
jl t2
t1:

inc bx
sub ax,60
cmp ax,60
jg t1 

t2:
mov al,bl
add al,0x30
mov ah,0x70
mov [es:di],ax
add di,2
mov ax,0x703a
mov [es:di],ax
add di,2
mov ax,[cs:timet]

cmp word[cs:timet],60
jl t3
sub ax,60

t3:
cmp ax,9
jg t4
mov bx,0x7030
mov [es:di],bx
add di,2

t4:
;;;call with ax parameter and di as the parameter
mov bx,0x0070
push bx
push di
push ax
call printnum



pop di
pop es
pop bx
pop ax
ret


timer:
push ax
push bx
cmp word[cs:ispause],1
jne s1
mov ax,0x7000
push ax
mov ax,3642
push ax
mov bx,gamepaused
push bx
mov ax,11
push ax
call printstr
mov al, 0x20
out 0x20, al ; end of interrupt
pop bx
pop ax
iret
s1:
mov ax,0x7000
push ax
mov ax,3642
push ax
mov bx,nogamepaused
push bx
mov ax,11
push ax
call printstr
cmp word[cs:keywait],1
je skkk
mov al, 0x20
out 0x20, al ; end of interrupt
pop bx
pop ax
iret
skkk:
cmp word[cs:fireflag],1
jne skifire
cmp word[cs:firetime],200
je skifire2
inc word[cs:firetime]
jmp skifire
skifire2:
mov word[cs:fireflag],0
mov word[cs:firetime],0
mov word[cs:ball],0x70fe

skifire:

cmp word[cs:ispowerup],1
jne skipower
inc word[cs:powert]
cmp word[cs:powert],180
jne skipower
mov word[cs:powert],0
mov word[cs:ispowerup],0
mov bx,0x7020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]
call block
add word[cs:bar+2],7
sub word[cs:bar+6],7
mov bx,0x4020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]
call block
skipower:
cmp word[timet],0
je skk
inc word[cs:timecounter]
cmp word[cs:timecounter],18
jne skk
dec word[cs:timet]
mov word[cs:timecounter],0
;;;;;;;;;;calling printing of time 
call printtime
skk:
inc word[cs:timedelay]
mov ax,[cs:ballspeed]
cmp word[cs:timedelay],ax
je execute
mov al, 0x20
out 0x20, al ; end of interrupt
pop bx
pop ax
iret
execute:
mov word[cs:timedelay],0

push si
push di
push es
cmp word[cs:down],1
jne nxi
cmp word[cs:l_t_r],1
jne nxi

mov ax,0x7020
push ax
call ballprint
jmp sss
nxi:
jmp nxt
sss:
inc word[cs:ballposition]
mov ax,[cs:factor]
add [cs:ballposition+2],ax
mov ax,[cs:ballposition]
cmp ax,19
jne dummynx2
;;;;;;;;;;if x >right || x< left then currentlife--



mov word[cs:down],0



mov ax,[cs:ballposition+2]
cmp ax,[cs:bar+2]
jge nextcop

mov ax,4000
push ax
call sound

mov word[cs:fireflag],0
mov word[cs:firetime],0
mov word[cs:ball],0x70fe
dec word[cs:currentlife]
mov word[cs:loss],1
mov word[cs:ispowerup],0
call printlives
jmp nx2
dummynx2:
jmp nx2

nextcop:


mov ax,[cs:ballposition+2]
cmp ax,[cs:bar+6]
jle nx22

mov ax,4000
push ax
call sound

mov word[cs:fireflag],0
mov word[cs:firetime],0
mov word[cs:ball],0x70fe
dec word[cs:currentlife]
mov word[cs:loss],1
mov word[cs:ispowerup],0
call printlives
jmp nx2
;;;;yahan 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;







nx22:

mov ax,500
push ax
call sound

mov ax,[cs:bar+2]
add ax,[cs:bar+6]
shr ax,1
cmp [cs:ballposition+2],ax
jg factori  ;jnl
je bet
mov word[cs:l_t_r],0
add ax,[cs:bar+2]
shr ax,1
cmp [cs:ballposition+2],ax
jle facto1
mov word[cs:factor],1                           ;add 1
jmp nx2
facto1:                    ;add 2 
mov word[cs:factor],2
jmp nx2
factori:
add ax,[cs:bar+6]
shr ax,1
cmp [cs:ballposition+2],ax
jge facto2
mov word[cs:factor],1
jmp nx2
facto2:
mov word[cs:factor],2
jmp nx2
bet:
mov word[cs:l_t_r],2


nx2:
;;;check if it has gone to 80 if yes dec one 
mov ax,[cs:ballposition+2]
cmp ax,80
jne ski1
dec word[cs:ballposition+2]
ski1:
mov ax,[cs:ballposition+2]
cmp ax,79
jne skip
mov word[cs:l_t_r],0

skip:

push word[cs:ball]
call ballprint
jmp terminate

nxt:
cmp word[cs:down],0
jne nxt2
cmp word[cs:l_t_r],1
jne nxt2


mov ax,0x7020
push ax
call ballprint


dec word[cs:ballposition]
mov ax,[cs:factor]
add [cs:ballposition+2],ax
cmp word[cs:ballposition],0
jne nx3
mov word[cs:down],1
nx3:
mov ax,[cs:ballposition+2]
cmp ax,80
jne ski2
dec word[cs:ballposition+2]
ski2:
cmp word[cs:ballposition+2],79
jne skip2
mov word[cs:l_t_r],0


skip2:

push word[cs:ball]
call ballprint
jmp terminate

nxt2:
cmp word[cs:down],0
jne nxt3
cmp word[cs:l_t_r],0
jne nxt3


mov ax,0x7020
push ax
call ballprint

dec word[cs:ballposition]
mov ax,[cs:factor]
sub [cs:ballposition+2],ax
cmp word[cs:ballposition],0
jne nx4
mov word[cs:down],1
nx4:
mov ax,[cs:ballposition+2]
cmp ax,-1
jne ski3
inc word[cs:ballposition+2]
ski3:
cmp word[cs:ballposition+2],0
jne skip3
mov word[cs:l_t_r],1
skip3:
push word[cs:ball]
call ballprint
jmp terminate


nxt3:
cmp word[cs:down],1
jne nxt41
cmp word[cs:l_t_r],0
jne nxt41
mov ax,0x7020
push ax
call ballprint

inc word[cs:ballposition]
mov ax,[cs:factor]
sub [cs:ballposition+2],ax

cmp word[cs:ballposition],19
jne dummynx5
mov word[cs:down],0

mov ax,[cs:ballposition+2]
cmp ax,[cs:bar+2]
jge nextcop2

mov ax,4000
push ax
call sound

mov word[cs:fireflag],0
mov word[cs:firetime],0
mov word[cs:ball],0x70fe
dec word[cs:currentlife]
mov word[cs:loss],1
mov word[cs:ispowerup],0
call printlives
jmp nx5
nxt41:
jmp nxt4
dummynx5:
jmp nx5
nextcop2:
mov ax,[cs:ballposition+2]
cmp ax,[cs:bar+6]
jle nx55

mov ax,4000
push ax
call sound

mov word[cs:fireflag],0
mov word[cs:firetime],0
mov word[cs:ball],0x70fe
dec word[cs:currentlife]
mov word[cs:loss],1
mov word[cs:ispowerup],0
call printlives
jmp nx5




nx55:

mov ax,500
push ax
call sound

mov ax,[cs:bar+2]
add ax,[cs:bar+6]
shr ax,1
cmp [cs:ballposition+2],ax
jl factoi2
je bet2
mov word[cs:l_t_r],1
add ax,[cs:bar+6]
shr ax,1
cmp [cs:ballposition+2],ax
jng facto3
mov word[cs:factor],2
jmp nx5
facto3:
mov word[cs:factor],1
jmp nx5
factoi2:
add ax,[bar+2]
shr ax,1
cmp [cs:ballposition+2],ax
jng facto4
mov word[cs:factor],1
jmp nx5
facto4:
mov word[cs:factor],2
jmp nx5
bet2:
mov word[cs:l_t_r],2

nx5:
mov ax,[cs:ballposition+2]
cmp ax,-1
jne ski4
inc word[cs:ballposition+2]
ski4:
cmp word[cs:ballposition+2],0
jne skip4
mov word[cs:l_t_r],1
skip4:
push word[cs:ball]
call ballprint
jmp terminate





nxt4:
;ltr==2 wali condition
mov ax,0x7020
push ax
call ballprint
dec word[cs:ballposition]
cmp word[cs:ballposition],0
jne saz1
mov word[cs:down],1
mov word[cs:l_t_r],1
saz1:
mov ax,[cs:ball]
push ax
call ballprint

terminate:
;;;;here goes the call to the function for checking of the hitting of bricks
mov bx,0
mov si,0
mov di,0
chkhit:
push 0                ;return value whether the brick hits or not
mov ax,si
inc ax
push ax               ;brick number
mov ax,[brickflag1+di]
push ax               ;brick flag
mov ax,[brick1+bx]    ;brick top
push ax
mov ax,[brick1+bx+2]  ;brick left
push ax
mov ax,[brick1+bx+4]   ;brick bottom
push ax
mov ax,[brick1+bx+6]   ;brick right
push ax
call checkhitting

pop ax 
cmp ax,1
jne louti11

mov ax,2000
push ax
call sound


mov word[brickflag1+di],0

mov ax,0x7020
push ax 
push word[brick1+bx]
push word[brick1+2+bx]
push word[brick1+4+bx]
push word[brick1+6+bx]
call block
jmp nolouti
louti11:
jmp louti
nolouti:

cmp si,[cs:powerupnum]
jne noext
mov word[cs:ispowerup],1
mov bx,0x7020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]
call block
mov ax,[cs:fixbarposition]
mov [cs:bar],ax
mov ax,[cs:fixbarposition+2]
mov [cs:bar+2],ax
mov ax,[cs:fixbarposition+4]
mov [cs:bar+4],ax
mov ax,[cs:fixbarposition+6]
mov [cs:bar+6],ax
sub word[cs:bar+2],7
add word[cs:bar+6],7
mov bx,0x4020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]
call block
noext:
cmp si,[cs:fireballnum]
jne noext2
mov word[cs:ball],0x44fe
mov word[cs:fireflag],1
noext2:
mov ax,[cs:addp]
add [cs:points],ax
mov ax,0x0070
push ax
mov ax,3910
push ax
push word[cs:points]
call printnum
jmp louti1
louti:
inc si
add di,2
add bx,8
cmp si,21
jne chkhit

louti1:
mov al, 0x20
out 0x20, al ; end of interrupt
pop es
pop di
pop si
pop bx
pop ax
iret

checkhitting:
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push si
push di

cmp word[bp+12],1 ;if brick has not been broken
je wewillcheck 

jmp exit_all

wewillcheck:

cmp word[bp+14],7
je nextcorner
cmp word[bp+14],14
je nextcorner
cmp word[bp+14],21
je nextcorner
cmp word[cs:down],0
jne nextcorner
cmp word[cs:l_t_r],0
jne nextcorner
mov ax,[bp+6]   ;if hits from bottom right corner 
inc ax
cmp ax,[cs:ballposition]
jne nextcorner
mov ax,[bp+4]
inc ax
cmp ax,[cs:ballposition+2]
jne nextcorner
cmp word[cs:fireflag],1
je sv
mov word[cs:down],1
sv:
mov word[bp+16],1
jmp exit_all

nextcorner:
cmp word[bp+14],1
je nextcorner2
cmp word[bp+14],8
je nextcorner2
cmp word[bp+14],15
je nextcorner2
cmp word[cs:down],0
jne nextcorner2
cmp word[cs:l_t_r],1
jne nextcorner2
mov ax,[bp+6]  ;if hits bottom left corner 
inc ax
cmp ax,[cs:ballposition]
jne nextcorner2
mov ax,[bp+8]
dec ax
cmp ax,[cs:ballposition+2]
jne nextcorner2
cmp word[cs:fireflag],1
je sv2
mov word[cs:down],1
sv2:
mov word[bp+16],1
jmp exit_all

nextcorner2:
cmp word[bp+14],1
je nextcorner3
cmp word[bp+14],8
je nextcorner3
cmp word[bp+14],15
je nextcorner3
cmp word[cs:down],1
jne nextcorner3
cmp word[cs:l_t_r],1
jne nextcorner3
mov ax,[bp+6]  ;if hits top left corner 
dec ax
cmp ax,[cs:ballposition]
jne nextcorner3
mov ax,[bp+8]
dec ax
cmp ax,[cs:ballposition+2]
jne nextcorner3
cmp word[cs:fireflag],1
je sv3
mov word[cs:down],0
sv3:
mov word[bp+16],1
jmp exit_all

nextcorner3:
cmp word[bp+14],7
je nextside
cmp word[bp+14],14
je nextside
cmp word[bp+14],21
je nextside
cmp word[cs:down],1
jne nextside
cmp word[cs:l_t_r],0
jne nextside
mov ax,[bp+6]  ;if hits top right corner 
dec ax
cmp ax,[cs:ballposition]
jne nextside

mov ax,[bp+4]
inc ax
cmp ax,[cs:ballposition+2]
jne nextside
cmp word[cs:fireflag],1
je sv4
mov word[cs:down],0
sv4:
mov word[bp+16],1
jmp exit_all

nextside:
cmp word[cs:down],1
je nextcom2
mov ax,[bp+6]
inc ax
cmp ax,[cs:ballposition]
jne nextcom2

same:
mov ax,[bp+8]
cmp [cs:ballposition+2],ax
jge nxtchki
jmp nextside3

nxtchki:
mov ax,[bp+4]
cmp [cs:ballposition+2],ax
jle nxtchki1
jmp nextside3

nxtchki1:
cmp word[cs:fireflag],1
je saz2
mov ax,[cs:down]
xor ax,1
mov word[cs:down],ax
cmp word[cs:l_t_r],2
jne saz2
mov word[cs:l_t_r],1
saz2:
mov word[bp+16],1
jmp exit_all

nextcom2:
cmp word[cs:down],0
je nextside3
mov ax,[bp+6]
dec ax
cmp ax,[cs:ballposition]
jne nextside3
jmp same

nextside3:
mov ax,[bp+6]
cmp ax,[cs:ballposition]
jne nextside2
mov ax,[bp+8]
cmp [cs:ballposition+2],ax
jge nxtchki3
jmp nextside2

nxtchki3:
mov ax,[bp+4]
cmp [cs:ballposition+2],ax
jle nxtchki13
jmp nextside2
nxtchki13:
cmp word[cs:fireflag],1
je skipfire1
mov ax,[cs:l_t_r]
xor ax,1
mov [cs:l_t_r],ax
skipfire1:
mov word[bp+16],1
jmp exit_all

nextside2:
mov ax,[bp+6]
cmp ax,[cs:ballposition]
jne nc
mov ax,[bp+8]
dec ax
cmp ax,[cs:ballposition+2]
jne nextcom
same1:
cmp word[cs:l_t_r],2
je goup
cmp word[cs:fireflag],1
je sv6
mov ax,[cs:l_t_r]
xor ax,1
mov [cs:l_t_r],ax
sv6:
mov word[bp+16],1
jmp exit_all
goup:
jmp exit_all

nextcom:
mov ax,[bp+4]
inc ax
cmp ax,[cs:ballposition+2]
jne nc
jmp same1


nc:
cmp word[cs:fireflag],1
jne sv7
jmp exit_all
sv7:
cmp word[cs:factor],2
je noexi_all
jmp exit_all
noexi_all:
mov ax,[bp+6]
inc ax
cmp [cs:ballposition],ax
jne nc3
cmp word[cs:l_t_r],1
je nonc2
jmp nc2
nonc2:
cmp word[cs:down],0
je noex_all
jmp nc2
noex_all:
mov ax,[bp+8]
sub ax,2
cmp [cs:ballposition+2],ax
jne nc2
mov word[cs:factor],1
jmp exit_all

nc2:
cmp word[cs:l_t_r],0
jne nc3
cmp word[cs:down],0
jne nc3
mov ax,[bp+4]
add ax,2
cmp [cs:ballposition+2],ax
jne nc3
mov word[cs:factor],1
jmp exit_all

nc3:
mov ax,[bp+6]
dec ax
cmp [cs:ballposition],ax
jne exit_all
cmp word[cs:l_t_r],0
jne nc4
cmp word[cs:down],0
jne nc4
mov ax,[bp+4]
add ax,2
cmp [cs:ballposition+2],ax
jne nc4
mov word[cs:factor],1
jmp exit_all


nc4:
cmp word[cs:l_t_r],1
jne exit_all
cmp word[cs:down],0
jne exit_all
mov ax,[bp+8]
sub ax,2
cmp [cs:ballposition+2],ax
jne exit_all
mov word[cs:factor],1
jmp exit_all





exit_all:
pop di
pop si
pop dx
pop cx
pop bx
pop ax
pop bp
ret 12







ballprint:
push bp
mov bp,sp
push ax
push bx
push di
push es
mov ax,0xb800
mov es,ax
mov ax,[ballposition]
mov bx,80
mul bl
mov bx,[ballposition+2]
add ax,bx
shl ax,1
mov di,ax
mov ax,[bp+4]
mov [es:di],ax

pop es
pop di
pop bx
pop ax
pop bp
ret 2




moving:



push ax
push bx
push es
in al, 0x60
cmp al,0x10
jne news
mov word[cs:isquit],1
mov al, 0x20
out 0x20, al
pop es
pop bx
pop ax
iret
news:
cmp al,0x19
jne chik
mov bx,[cs:ispause]
xor bx,1
mov [cs:ispause],bx
mov al, 0x20
out 0x20, al
pop es
pop bx
pop ax
iret
chik:
cmp word[cs:ispause],1
jne exee 
mov al, 0x20
out 0x20, al
pop es
pop bx
pop ax
iret
exee:
cmp al, 0x4b			;Comparision for Left Arrow
jne nxtcmp
;;;;left shifting of bar 
mov bx,[cs:bar+2]
sub bx,1
cmp bx,0
jl nomatch

mov bx,0x7020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]

call block

sub word[cs:bar+2],1
sub word [cs:bar+6],1
mov bx,0x4020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]

call block

nomatch:
mov al, 0x20
out 0x20, al
pop es
pop bx
pop ax
iret




nxtcmp:
cmp al, 0x4d			;Comparision for Right Arrow
jne nomatch1
;;;;;;;right shifting of bar
mov bx,[cs:bar+6]
add bx,1
cmp bx,79
jg nomatch

mov bx,0x7020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]

call block

add word[cs:bar+2],1
add word [cs:bar+6],1
mov bx,0x4020
push bx
push word[cs:bar]
push word[cs:bar+2]
push word[cs:bar+4]
push word[cs:bar+6]

call block
jmp nomatch

nomatch1:
pop es
pop bx
pop ax
jmp far[cs:oldisr]




block:
push bp
mov bp,sp
push ax
push bx
push cx
push dx
push si
push di
push ds
push es
mov ax,0xb800
mov es,ax

mov cx,80
mov ax,[bp+10]
mul cx
add ax,[bp+8]
shl ax,1
mov di,ax



cld

 mov dx,[bp+6]
 sub dx,[bp+10] ;the number os lines to be copied
add dx,1

mov ax,80
sub ax,[bp+4];;;;;;this is for subtracting to get to previous line
mov bx,[bp+8]
add bx,ax
dec bx
shl bx,1
mov ax,[bp+12]

l2:
 mov cx,[bp+4]
 sub cx,[bp+8] ;how many times rep is going to execute 
 inc cx
 rep stosw

add di,bx 

dec dx
cmp dx,0
jne l2

pop es
pop ds
pop di
pop si
pop dx
pop cx
pop bx
pop ax
pop bp
ret 10
sound:
push bp
mov bp,sp
push ax
push bx
push cx
push dx
mov     dx,[bp+4]          ; Number of times to repeat whole routine.
mov     bx,1             ; Frequency value.
mov     al, 10110110B    ; The Magic Number (use this binary number only)
out     43H, al          ; Send it to the initializing port 43H Timer 2.
next_f:          ; This is were we will jump back to 2000 times.
mov     ax, bx           ; Move our Frequency value into AX.
out     42H, al          ; Send LSB to port 42H.
mov     al, ah           ; Move MSB into AL 
out     42H, al          ; Send MSB to port 42H.
in      al, 61H          ; Get current value of port 61H.
or      al, 00000011B    ; OR AL to this value, forcing first two bits high.
out     61H, al          ; Copy it to port 61H of the PPI Chip
mov     cx, 100          ; Repeat loop 100 times
delay_l:              ; Here is where we loop back too.
loop    delay_l       ; Jump repeatedly to DELAY_LOOP until CX = 0
inc     bx               ; Incrementing the value of BX lowers
dec     dx               ; Decrement repeat routine count
cmp     dx, 0            ; Is DX (repeat count) = to 0
jnz     next_f   ; If not jump to NEXT_FREQUENCY
in      al,61H           ; Get current value of port 61H.
and     al,11111100B     ; AND AL to this value, forcing first two bits low.
out     61H,al           ; Copy it to port 61H of the PPI Chip
pop dx
pop cx
pop bx
pop ax
pop bp
ret 2



