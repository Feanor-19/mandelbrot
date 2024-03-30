	.file	"mandelbrot.cpp"
	.text
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
.LC0:
	.string	"Mandelbrot!"
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	_ZL6W_NAME, @object
	.size	_ZL6W_NAME, 8
_ZL6W_NAME:
	.quad	.LC0
	.section	.rodata
	.align 4
	.type	_ZL16DEFAULT_W_HEIGHT, @object
	.size	_ZL16DEFAULT_W_HEIGHT, 4
_ZL16DEFAULT_W_HEIGHT:
	.long	600
	.align 4
	.type	_ZL15DEFAULT_W_WIDTH, @object
	.size	_ZL15DEFAULT_W_WIDTH, 4
_ZL15DEFAULT_W_WIDTH:
	.long	800
	.align 8
	.type	_ZL18DEFAULT_TOP_LEFT_X, @object
	.size	_ZL18DEFAULT_TOP_LEFT_X, 8
_ZL18DEFAULT_TOP_LEFT_X:
	.long	0
	.long	-1073741824
	.align 8
	.type	_ZL18DEFAULT_TOP_LEFT_Y, @object
	.size	_ZL18DEFAULT_TOP_LEFT_Y, 8
_ZL18DEFAULT_TOP_LEFT_Y:
	.long	0
	.long	1073217536
	.align 8
	.type	_ZL12DEFAULT_STEP, @object
	.size	_ZL12DEFAULT_STEP, 8
_ZL12DEFAULT_STEP:
	.long	1202590843
	.long	1064598241
	.align 8
	.type	_ZL19DEFAULT_NUM_OF_REPS, @object
	.size	_ZL19DEFAULT_NUM_OF_REPS, 8
_ZL19DEFAULT_NUM_OF_REPS:
	.quad	100000
	.type	_ZL20INFINITE_STEP_NUMBER, @object
	.size	_ZL20INFINITE_STEP_NUMBER, 1
_ZL20INFINITE_STEP_NUMBER:
	.byte	-2
	.align 8
	.type	_ZL20DEFAULT_DEATH_RADIUS, @object
	.size	_ZL20DEFAULT_DEATH_RADIUS, 8
_ZL20DEFAULT_DEATH_RADIUS:
	.long	0
	.long	1076101120
	.align 8
	.type	_ZL8ZOOM_MUL, @object
	.size	_ZL8ZOOM_MUL, 8
_ZL8ZOOM_MUL:
	.long	-1030792151
	.long	1072703733
	.align 8
	.type	_ZL9SPEED_MUL, @object
	.size	_ZL9SPEED_MUL, 8
_ZL9SPEED_MUL:
	.long	0
	.long	1075052544
	.align 4
	.type	_ZL11KEY_MOVE_UP, @object
	.size	_ZL11KEY_MOVE_UP, 4
_ZL11KEY_MOVE_UP:
	.long	22
	.align 4
	.type	_ZL13KEY_MOVE_LEFT, @object
	.size	_ZL13KEY_MOVE_LEFT, 4
_ZL13KEY_MOVE_LEFT:
	.zero	4
	.align 4
	.type	_ZL14KEY_MOVE_RIGHT, @object
	.size	_ZL14KEY_MOVE_RIGHT, 4
_ZL14KEY_MOVE_RIGHT:
	.long	3
	.align 4
	.type	_ZL13KEY_MOVE_DOWN, @object
	.size	_ZL13KEY_MOVE_DOWN, 4
_ZL13KEY_MOVE_DOWN:
	.long	18
	.align 4
	.type	_ZL11KEY_ZOOM_IN, @object
	.size	_ZL11KEY_ZOOM_IN, 4
_ZL11KEY_ZOOM_IN:
	.long	16
	.align 4
	.type	_ZL12KEY_ZOOM_OUT, @object
	.size	_ZL12KEY_ZOOM_OUT, 4
_ZL12KEY_ZOOM_OUT:
	.long	4
	.align 4
	.type	_ZL9KEY_SPEED, @object
	.size	_ZL9KEY_SPEED, 4
_ZL9KEY_SPEED:
	.long	38
	.align 4
	.type	_ZL14KEY_PRINT_CNTR, @object
	.size	_ZL14KEY_PRINT_CNTR, 4
_ZL14KEY_PRINT_CNTR:
	.long	2
	.align 4
	.type	_ZL15KEY_PRINT_MOUSE, @object
	.size	_ZL15KEY_PRINT_MOUSE, 4
_ZL15KEY_PRINT_MOUSE:
	.long	12
	.align 4
	.type	_ZL13KEY_GOTO_ORIG, @object
	.size	_ZL13KEY_GOTO_ORIG, 4
_ZL13KEY_GOTO_ORIG:
	.long	14
	.text
	.globl	_Z15calculate_image5StatePFvjjhE
	.type	_Z15calculate_image5StatePFvjjhE, @function
_Z15calculate_image5StatePFvjjhE:
.LFB3881:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	_Z7alg_sse5StatePFvjjhE
	addq	$48, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3881:
	.size	_Z15calculate_image5StatePFvjjhE, .-_Z15calculate_image5StatePFvjjhE
	.section	.text._Z16calc_step_numberddd,"axG",@progbits,_Z16calc_step_numberddd,comdat
	.weak	_Z16calc_step_numberddd
	.type	_Z16calc_step_numberddd, @function
_Z16calc_step_numberddd:
.LFB3882:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm2, -72(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movb	$0, -33(%rbp)
	jmp	.L3
.L7:
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	jnb	.L9
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
.L3:
	cmpb	$-3, -33(%rbp)
	jbe	.L7
	jmp	.L6
.L9:
	nop
.L6:
	movzbl	-33(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3882:
	.size	_Z16calc_step_numberddd, .-_Z16calc_step_numberddd
	.text
	.globl	_Z14alg_single_dot5StatePFvjjhE
	.type	_Z14alg_single_dot5StatePFvjjhE, @function
_Z14alg_single_dot5StatePFvjjhE:
.LFB3883:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L11
.L19:
	movl	$0, -36(%rbp)
	jmp	.L12
.L18:
	movsd	24(%rbp), %xmm1
	movl	-36(%rbp), %eax
	testq	%rax, %rax
	js	.L13
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L14
.L13:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L14:
	movsd	40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	32(%rbp), %xmm1
	movl	-40(%rbp), %eax
	testq	%rax, %rax
	js	.L15
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L16
.L15:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L16:
	movsd	40(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L17
	movq	-56(%rbp), %rbx
	movsd	48(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	_Z16calc_step_numberddd
	movzbl	%al, %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	*%rbx
.L17:
	addl	$1, -36(%rbp)
.L12:
	movl	16(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jb	.L18
	addl	$1, -40(%rbp)
.L11:
	movl	20(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	jb	.L19
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3883:
	.size	_Z14alg_single_dot5StatePFvjjhE, .-_Z14alg_single_dot5StatePFvjjhE
	.globl	_Z11alg_vectors5StatePFvjjhE
	.type	_Z11alg_vectors5StatePFvjjhE, @function
_Z11alg_vectors5StatePFvjjhE:
.LFB3884:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -368(%rbp)
	jmp	.L21
.L55:
	movsd	32(%rbp), %xmm1
	movl	-368(%rbp), %eax
	testq	%rax, %rax
	js	.L22
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L23
.L22:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L23:
	movsd	40(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -312(%rbp)
	movl	$0, -364(%rbp)
	jmp	.L24
.L54:
	movsd	24(%rbp), %xmm1
	movl	-364(%rbp), %eax
	testq	%rax, %rax
	js	.L25
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L26
.L25:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L26:
	movsd	40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -304(%rbp)
	movsd	-304(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movsd	40(%rbp), %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	40(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	40(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	-304(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	40(%rbp), %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	40(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	40(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-304(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-312(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -360(%rbp)
	jmp	.L27
.L50:
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movl	$0, -356(%rbp)
	jmp	.L28
.L29:
	movl	-356(%rbp), %eax
	movsd	-208(%rbp,%rax,8), %xmm1
	movl	-356(%rbp), %eax
	movsd	-208(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movl	-356(%rbp), %eax
	movsd	%xmm0, -144(%rbp,%rax,8)
	addl	$1, -356(%rbp)
.L28:
	cmpl	$3, -356(%rbp)
	jbe	.L29
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -352(%rbp)
	jmp	.L30
.L31:
	movl	-352(%rbp), %eax
	movsd	-176(%rbp,%rax,8), %xmm1
	movl	-352(%rbp), %eax
	movsd	-176(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movl	-352(%rbp), %eax
	movsd	%xmm0, -112(%rbp,%rax,8)
	addl	$1, -352(%rbp)
.L30:
	cmpl	$3, -352(%rbp)
	jbe	.L31
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -348(%rbp)
	jmp	.L32
.L33:
	movl	-348(%rbp), %eax
	movsd	-208(%rbp,%rax,8), %xmm1
	movl	-348(%rbp), %eax
	movsd	-176(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movl	-348(%rbp), %eax
	movsd	%xmm0, -80(%rbp,%rax,8)
	addl	$1, -348(%rbp)
.L32:
	cmpl	$3, -348(%rbp)
	jbe	.L33
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -344(%rbp)
	jmp	.L34
.L35:
	movl	-344(%rbp), %eax
	movsd	-144(%rbp,%rax,8), %xmm1
	movl	-344(%rbp), %eax
	movsd	-112(%rbp,%rax,8), %xmm0
	addsd	%xmm1, %xmm0
	movl	-344(%rbp), %eax
	movsd	%xmm0, -48(%rbp,%rax,8)
	addl	$1, -344(%rbp)
.L34:
	cmpl	$3, -344(%rbp)
	jbe	.L35
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movsd	48(%rbp), %xmm1
	movsd	48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movl	$0, -340(%rbp)
	jmp	.L36
.L39:
	movl	-340(%rbp), %eax
	movsd	-48(%rbp,%rax,8), %xmm1
	movsd	-296(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L37
	movl	-340(%rbp), %eax
	movl	$1, -288(%rbp,%rax,4)
.L37:
	addl	$1, -340(%rbp)
.L36:
	cmpl	$3, -340(%rbp)
	jbe	.L39
	movl	$0, -336(%rbp)
	movl	$0, -332(%rbp)
	jmp	.L40
.L41:
	movl	-332(%rbp), %eax
	movl	-288(%rbp,%rax,4), %edx
	movl	-332(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -336(%rbp)
	addl	$1, -332(%rbp)
.L40:
	cmpl	$3, -332(%rbp)
	jbe	.L41
	cmpl	$0, -336(%rbp)
	je	.L58
	movl	$0, -328(%rbp)
	jmp	.L44
.L45:
	movl	-328(%rbp), %eax
	movzbl	-12(%rbp,%rax), %edx
	movl	-328(%rbp), %eax
	movl	-288(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-328(%rbp), %eax
	movb	%dl, -12(%rbp,%rax)
	addl	$1, -328(%rbp)
.L44:
	cmpl	$3, -328(%rbp)
	jbe	.L45
	movl	$0, -324(%rbp)
	jmp	.L46
.L47:
	movl	-324(%rbp), %eax
	movsd	-144(%rbp,%rax,8), %xmm0
	movl	-324(%rbp), %eax
	movsd	-112(%rbp,%rax,8), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movl	-324(%rbp), %eax
	movsd	-272(%rbp,%rax,8), %xmm0
	addsd	%xmm1, %xmm0
	movl	-324(%rbp), %eax
	movsd	%xmm0, -208(%rbp,%rax,8)
	addl	$1, -324(%rbp)
.L46:
	cmpl	$3, -324(%rbp)
	jbe	.L47
	movl	$0, -320(%rbp)
	jmp	.L48
.L49:
	movl	-320(%rbp), %eax
	movsd	-80(%rbp,%rax,8), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movl	-320(%rbp), %eax
	movsd	-240(%rbp,%rax,8), %xmm0
	addsd	%xmm1, %xmm0
	movl	-320(%rbp), %eax
	movsd	%xmm0, -176(%rbp,%rax,8)
	addl	$1, -320(%rbp)
.L48:
	cmpl	$3, -320(%rbp)
	jbe	.L49
	addl	$1, -360(%rbp)
.L27:
	cmpl	$253, -360(%rbp)
	jle	.L50
	jmp	.L43
.L58:
	nop
.L43:
	cmpq	$0, -376(%rbp)
	je	.L51
	movl	$0, -316(%rbp)
	jmp	.L52
.L53:
	movq	-376(%rbp), %rcx
	movl	-316(%rbp), %eax
	movzbl	-12(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-364(%rbp), %esi
	movl	-316(%rbp), %eax
	addl	%eax, %esi
	movl	-368(%rbp), %eax
	movl	%eax, %edi
	call	*%rcx
	addl	$1, -316(%rbp)
.L52:
	cmpl	$3, -316(%rbp)
	jbe	.L53
.L51:
	addl	$4, -364(%rbp)
.L24:
	movl	16(%rbp), %eax
	cmpl	%eax, -364(%rbp)
	jb	.L54
	addl	$1, -368(%rbp)
.L21:
	movl	20(%rbp), %eax
	cmpl	%eax, -368(%rbp)
	jb	.L55
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3884:
	.size	_Z11alg_vectors5StatePFvjjhE, .-_Z11alg_vectors5StatePFvjjhE
	.globl	_Z7alg_sse5StatePFvjjhE
	.type	_Z7alg_sse5StatePFvjjhE, @function
_Z7alg_sse5StatePFvjjhE:
.LFB4388:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$704, %rsp
	movq	%rdi, -696(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	48(%rbp), %xmm1
	movsd	48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -656(%rbp)
	movss	-656(%rbp), %xmm0
	movss	%xmm0, -652(%rbp)
	movss	-652(%rbp), %xmm0
	shufps	$0, %xmm0, %xmm0
	nop
	movaps	%xmm0, -576(%rbp)
	movaps	.LC3(%rip), %xmm0
	movaps	%xmm0, -560(%rbp)
	movl	$0, -684(%rbp)
	jmp	.L63
.L98:
	movsd	32(%rbp), %xmm1
	movl	-684(%rbp), %eax
	testq	%rax, %rax
	js	.L64
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L65
.L64:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L65:
	movsd	40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -668(%rbp)
	movl	$0, -680(%rbp)
	jmp	.L66
.L97:
	movsd	24(%rbp), %xmm1
	movl	-680(%rbp), %eax
	testq	%rax, %rax
	js	.L67
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L68
.L67:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L68:
	movsd	40(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -664(%rbp)
	movsd	40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -632(%rbp)
	movss	-632(%rbp), %xmm0
	movss	%xmm0, -628(%rbp)
	movss	-628(%rbp), %xmm0
	shufps	$0, %xmm0, %xmm0
	movaps	%xmm0, %xmm1
	nop
	movaps	-560(%rbp), %xmm0
	movaps	%xmm0, -400(%rbp)
	movaps	%xmm1, -384(%rbp)
	movaps	-400(%rbp), %xmm0
	mulps	-384(%rbp), %xmm0
	movss	-664(%rbp), %xmm1
	movss	%xmm1, -640(%rbp)
	movss	-640(%rbp), %xmm1
	movss	%xmm1, -636(%rbp)
	movss	-636(%rbp), %xmm1
	shufps	$0, %xmm1, %xmm1
	nop
	movaps	%xmm1, -432(%rbp)
	movaps	%xmm0, -416(%rbp)
	movaps	-432(%rbp), %xmm0
	addps	-416(%rbp), %xmm0
	movaps	%xmm0, -544(%rbp)
	movss	-668(%rbp), %xmm0
	movss	%xmm0, -648(%rbp)
	movss	-648(%rbp), %xmm0
	movss	%xmm0, -644(%rbp)
	movss	-644(%rbp), %xmm0
	shufps	$0, %xmm0, %xmm0
	nop
	movaps	%xmm0, -528(%rbp)
	movaps	-544(%rbp), %xmm0
	movaps	%xmm0, -608(%rbp)
	movaps	-528(%rbp), %xmm0
	movaps	%xmm0, -592(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -624(%rbp)
	movl	$0, -676(%rbp)
	jmp	.L78
.L93:
	movaps	-608(%rbp), %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	-608(%rbp), %xmm0
	movaps	%xmm0, -224(%rbp)
	movaps	-240(%rbp), %xmm0
	mulps	-224(%rbp), %xmm0
	movaps	%xmm0, -512(%rbp)
	movaps	-592(%rbp), %xmm0
	movaps	%xmm0, -272(%rbp)
	movaps	-592(%rbp), %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	-272(%rbp), %xmm0
	mulps	-256(%rbp), %xmm0
	movaps	%xmm0, -496(%rbp)
	movaps	-608(%rbp), %xmm0
	movaps	%xmm0, -304(%rbp)
	movaps	-592(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movaps	-304(%rbp), %xmm0
	mulps	-288(%rbp), %xmm0
	movaps	%xmm0, -480(%rbp)
	movaps	-512(%rbp), %xmm0
	movaps	%xmm0, -336(%rbp)
	movaps	-496(%rbp), %xmm0
	movaps	%xmm0, -320(%rbp)
	movaps	-336(%rbp), %xmm0
	addps	-320(%rbp), %xmm0
	movaps	%xmm0, -464(%rbp)
	movaps	-464(%rbp), %xmm0
	movaps	%xmm0, -368(%rbp)
	movaps	-576(%rbp), %xmm0
	movaps	%xmm0, -352(%rbp)
	movaps	-368(%rbp), %xmm0
	cmpleps	-352(%rbp), %xmm0
	nop
	movaps	%xmm0, -448(%rbp)
	movaps	-448(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	-208(%rbp), %xmm0
	movmskps	%xmm0, %eax
	nop
	movl	%eax, -660(%rbp)
	cmpl	$0, -660(%rbp)
	je	.L100
	movaps	-448(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movdqa	-32(%rbp), %xmm0
	movdqa	-624(%rbp), %xmm1
	movaps	%xmm1, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movdqa	-64(%rbp), %xmm0
	movdqa	-48(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -624(%rbp)
	movaps	-512(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	-496(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-96(%rbp), %xmm0
	subps	-80(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	-544(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	-128(%rbp), %xmm0
	addps	-112(%rbp), %xmm0
	movaps	%xmm0, -608(%rbp)
	movaps	-480(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	-480(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	-160(%rbp), %xmm0
	addps	-144(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	movaps	-528(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	-192(%rbp), %xmm0
	addps	-176(%rbp), %xmm0
	movaps	%xmm0, -592(%rbp)
	addl	$1, -676(%rbp)
.L78:
	cmpl	$253, -676(%rbp)
	jle	.L93
	jmp	.L86
.L100:
	nop
.L86:
	cmpq	$0, -696(%rbp)
	je	.L94
	movl	$0, -672(%rbp)
	jmp	.L95
.L96:
	movq	-696(%rbp), %rcx
	movl	-672(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	-624(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-680(%rbp), %esi
	movl	-672(%rbp), %eax
	addl	%eax, %esi
	movl	-684(%rbp), %eax
	movl	%eax, %edi
	call	*%rcx
	addl	$1, -672(%rbp)
.L95:
	cmpl	$3, -672(%rbp)
	jbe	.L96
.L94:
	addl	$4, -680(%rbp)
.L66:
	movl	16(%rbp), %eax
	cmpl	%eax, -680(%rbp)
	jb	.L97
	addl	$1, -684(%rbp)
.L63:
	movl	20(%rbp), %eax
	cmpl	%eax, -684(%rbp)
	jb	.L98
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L99
	call	__stack_chk_fail@PLT
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4388:
	.size	_Z7alg_sse5StatePFvjjhE, .-_Z7alg_sse5StatePFvjjhE
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 16
.LC3:
	.long	0
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
