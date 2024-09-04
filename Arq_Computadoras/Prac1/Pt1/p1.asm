org 100h      ; Define la dirección de origen
msj db "Hola"
fin db ?
org 2000h
mov bx, offset msj
mov al, offset msj-offset fin
int 7
int 0
end
