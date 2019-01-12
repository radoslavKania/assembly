; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

Include Irvine32.inc
.code
main proc
	call ReadInt	
	mov	ebx,eax
	mov ecx,9
	etyk:
	call ReadInt
	cmp ebx,eax
	jl etyk2
	mov ebx,eax
	etyk2:
	loop etyk
	mov eax,ebx
	call WriteInt 
		
	invoke ExitProcess,0
main endp
end main