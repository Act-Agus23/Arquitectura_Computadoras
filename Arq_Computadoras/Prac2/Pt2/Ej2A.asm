PA EQU 30h
CA EQU 32h
ORG 1000h
si db "Ocupada"
no db "Libre"
ORG 2000H
mov al, 0FDh
out CA, al
in al, PA
AND al, 01h ;forzar 0
jnz ocupada
mov bx, offset no
mov al, 5
int 7
jmp fin
ocupada: mov bx, offset si
mov al, 7
INT 7
fin: int 0
end
