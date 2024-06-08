#define STDOUT 0xd0580000
.section .data

# 128-bit plaintext (16 bytes)
plaintext: 
    .byte 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34

rcon_offset:
    .word 0x01000000, 0x02000000, 0x04000000, 0x08000000
    .word 0x10000000, 0x20000000, 0x40000000, 0x80000000
    .word 0x1b000000, 0x36000000
    
rcon:
    .byte 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36
    
sbox:   .byte 0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76 
        .byte 0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0  
        .byte 0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15  
        .byte 0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75  
        .byte 0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84  
        .byte 0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf  
        .byte 0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8  
        .byte 0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2  
        .byte 0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73  
        .byte 0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb  
        .byte 0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79  
        .byte 0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08  
        .byte 0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a  
        .byte 0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e  
        .byte 0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf  
        .byte 0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
     
     
allroundkeys:
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    .byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
         
# 128-bit key (16 bytes)
key: 
    .byte 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c


stateArray: 
	.space 128

keyRotationOffset:
	.byte 1, 2, 3, 0

	
shiftOffset: 
         .byte 0, 5, 10, 15, 4, 9, 14, 3, 8, 13, 2, 7, 12, 1, 6, 11
         
mixcol1:
	.byte 3, 0, 1, 2

mixcol2:
	.byte 2, 3, 0, 1
	
mixcol3:
	.byte 1, 2, 3, 0
	
mask1:
	.byte 1,0,0,0

mask2:
	.byte 2,0,0,0

mask3:
	.byte 4,0,0,0

mask4:
	.byte 8,0,0,0

keybuffer:
	.byte 0x00, 0x00, 0x00, 0x00
	
mix_cols:  #This is fixed for AES. Will be used in the MixColumns method
	.byte 0x02, 0x03, 0x01, 0x01
	.byte 0x01, 0x02, 0x03, 0x01
	.byte 0x01, 0x01, 0x02, 0x03
	.byte 0x03, 0x01, 0x01, 0x02
	
testarr:  
	.byte 0x00, 0x00, 0x00, 0x00
	
mixcols: 
	.space 128


.section .text
.global _start
_start:
vvaddint32:

#reserve a register to keep track of rounds: t1


	
	# Load input and key into vector registers
	la s1, plaintext
	la s2, key
	la s5, stateArray
	li t0, 16         # Load immediate value 16 into register t0
	vsetvli t0, t0, e8 # Set vector length to 16 8-bit elements
	vle8.v v0, (s1)    # Load plaintext into v0
	vle8.v v1, (s2)    # Load key into v1

	# Initial AddRoundKey
	vxor.vv v0, v0, v1
	vse8.v v0, (s5) #updated state array by adding initial key
	
	li s11, 0
	li t1, 9
	
	rounds:

  	
#subByteslookup
	#s3= base address of sbox
	la s4, plaintext
	la s3, sbox
	la s5, stateArray
	
	#16 elements of size 8 bits each are present
	addi t0, zero, 16
	
	vsetvli t0, t0, e8
	vle8.v v2, (s5)   #loading state array in v2
	vluxei8.v v3, (s3), v2  #v2 contains statearray, s3 is base address of sbox
	vse8.v v3, (s5) #store resulting vector in memory stateArray
	
	
#shiftRows

	#bear in mind that consecutive memory locations were taken as columns in key expansion 
	#i.e e.g 2x2 array: .data 1, 2, 3, 4  is represented as follows array = [1 ,3]
	#									[2, 4]

	#hardcoded an array containing offsets which when added to the base address of state array, will be our new memory addresses to access
	#in the required order
	
	
	addi t0, zero, 16
	la s1, stateArray
	la s2, shiftOffset
	
	vsetvli t0, t0, e8 #element size is 8 bits
	
	vle8.v v1, (s2) #loading the shift offsets in v1
	vluxei8.v v3, (s1), v1  # v3 will now hold the resulting statearray after shifting
	vse8.v v3, (s1) #store resulting vector v3 in memory stateArray


#MixColumns
	
	#performing galois multiplication as it is more efficient and saves memory
	
	
	
	
	
	la s2, stateArray      # Load the base address of stateArray
	li t0, 4               # Set vector length to 4 bytes
	vsetvli t0, t0, e8     # Set the vector length to the element size

	li t6, 4               # Initialize a loop counter to 4 (number of columns)
	la s3, mixcols

	loop_columns:


	li t4, 0x0
	vmv.v.x v2, t4
	vmv.v.x v5, t4
	vmv.v.x v10, t4
	vmv.v.x v14, t4
	vmv.v.x v18, t4
	vmv.v.x v22, t4
	vmv.v.x v1, t4

	vle8.v v6, (s2)      # Load the bytes into vector v6
	
	# Create a mask to check the MSB of each byte (0x80)
	li t2, 0x80
	vmv.v.x v1, t2       # Load 0x80 into v1 for MSB check

	# Perform bitwise AND to check if MSB is set
	vand.vv v14, v6, v1  # v14 = v6 & 0x80
	vmsne.vi v0, v14, 0  #v0 has 1 wherever v14 has 1

	# Perform left shift by 1 bit
	vsll.vi v10, v6, 1   # v10 = v6 << 1

	# XOR with 0x1B if MSB is set
	li t3, 0x1B
	vmv.v.x v2, t3       # Load 0x1B into v2 for XOR operation
	vxor.vv v10, v10, v2, v0.t  # XOR with 0x1B where MSB is set
	
	#result of galois multiplication by 2 in v10
	
	#galois multiplication by 3 results in v18

	vxor.vv v18, v10, v6    # v18 = v10 ^ v6

	#now computing new columns
	#can be looped for all columns

	#computing first cell of resulting column
	#r1= 2.s1 xor 3.s2 xor 1.s3 xor 1.s4
	
	
	la t2, mask1
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4 
	vmv.v.x v2, t4
	vor.vv v2, v10, v3, v0.t #v2 contains 2.s1 in first cell
	
	la t2, mask2
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4 
	vor.vv v2, v18, v3, v0.t #v2 contains 3.s2 in 2nd cell
	
	la t2, mask3
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v6, v3, v0.t #v2 contains 1.s3 in 3rd cell
	
	la t2, mask4
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v6, v3, v0.t #v2 contains 1.s4 in 4th cell
	
	
	#v2 contains all 4 elements that need to be xor-ed
	
	la t2, mask1
	vle8.v v0, (t2)
	vredxor.vs v4, v2, v3 #now v4's 1st cell contains r1
	
	vor.vv v5, v4, v3, v0.t #copied r1 to v5's first cell
	
	#r2= 1.s1 xor 2.s2 xor 3.s3 xor 1.s4
	
	la t2, mask1
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v2, t4 
	vor.vv v2, v6, v2, v0.t #v2 contains 1.s1 in first cell
	
	la t2, mask2
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4 
	vor.vv v2, v10, v3, v0.t #v2 contains 2.s2 in 2nd cell
	
	la t2, mask3
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v18, v3, v0.t #v2 contaibs 3.s3 in 3rd cell
	
	la t2, mask4
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v6, v3, v0.t #v2 contaibs 1.s4 in 4th cell
	la t2, mask2
	vle8.v v0, (t2)
	
	vredxor.vs v4, v2, v3 #now v3's 2nd cell contains r2
	vslideup.vi v22, v4, 1
	vor.vv v5, v22, v3, v0.t #copied r2 to v5's 2nd cell
	
	#r3= 1.s1 xor 1.s2 xor 2.s3 xor 3.s4
	
	la t2, mask1
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v2, t4 
	vor.vv v2, v6, v2, v0.t #v2 contains 1.s1 in first cell
	
	la t2, mask2
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4 
	vor.vv v2, v6, v3, v0.t #v2 contains 1.s2 in 2nd cell
	
	la t2, mask3
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v10, v3, v0.t #v2 contaibs 3.s3 in 3rd cell
	
	la t2, mask4
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v18, v3, v0.t #v2 contaibs 1.s4 in 4th cell
	
	la t2, mask3
	vle8.v v0, (t2)
	vredxor.vs v4, v2, v3 #now v3's 3rd cell contains r3
	vslideup.vi v22, v4, 2
	vor.vv v5, v22, v3, v0.t #copied r3 to v5's 3rd cell
	
	#r4= 3.s1 xor 1.s2 xor 1.s3 xor 2.s4
	
	la t2, mask1
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v2, t4 
	vor.vv v2, v18, v2, v0.t #v2 contains 1.s1 in first cell
	
	la t2, mask2
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4 
	vor.vv v2, v6, v3, v0.t #v2 contains 2.s2 in 2nd cell
	
	la t2, mask3
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v6, v3, v0.t #v2 contaibs 3.s3 in 3rd cell
	
	la t2, mask4
	vle8.v v0, (t2)
	li t4, 0x0
	vmv.v.x v3, t4
	vor.vv v2, v10, v3, v0.t #v2 contaibs 1.s4 in 4th cell
	
	vredxor.vs v4, v2, v3 #now v3's 1st cell contains r1
	vslideup.vi v22, v4, 3
	vor.vv v5, v22, v3, v0.t #copied r1 to v5's 4th cell
	
	vse8.v v5, (s2)

	addi s2, s2, 4         # Increment the pointer by 4 bytes (assuming each element is 1 byte)
	addi s3, s3, 4

	addi t6, t6, -1        # Decrement the loop counter
	bnez t6, loop_columns  # Repeat the loop if the loop counter is not zero
	
	
#keyExpansion:
 	la s2, key
 	la s3, sbox
 	la s4, rcon
	li t0,4
	la s1, allroundkeys
	
	#loading each column of key
	vsetvli t0, t0, e8
	vle8.v v6, (s2)  #v6= 1st col
	addi s2, s2, 4    #increment index by 4 bytes
	vle8.v v7, (s2)  #v7= 2nd col
	addi s2, s2, 4
	vle8.v v8, (s2)  #v8= 3rd col
	addi s2, s2, 4
	vle8.v v9, (s2) #v9 contains the last column\
	addi s2,s2,-12
	
	vsetvli t0, t0, e8 # setting e=8 bits
	
	#rotation
	la t3, keyRotationOffset
	la t4, keybuffer
	vle8.v v0, (t3) #v0 contains offset necessary for rotation
	vse8.v v9, (t4)
	vluxei8.v v10, (t4), v0 #v10 contains rotated elements in last column, ith v10 = mem [s2+ ith element of v0}
		
	#s-box lookup
	la s3, sbox
	vluxei8.v v10, (s3), v10 #each 8 byte element in v10 maps to corresponding data in sbox using lookup, result in v10
	vxor.vv v6,v6,v10  #first column v6 is xor-ed with the temporary column, and stored in v6
	li t0,1   # t0=1
	vsetvli t0,t0,e8
	la s4, rcon #base address
	add s4, s4, s11
	add s11, s11, 1
	vle8.v v30, (s4)  #v30 contains rcon value, 4 elements of 8 bytes each
	
	li t0,4
	vsetvli t0, t0, e8 #  4 elements of 8 bytes each
	
	#old key is overwritten by new key
	vxor.vv v6,v6,v30 # first col = rcon xor v6
	addi s4,s4,1  # increment rcon pointer
	
	#here we xor col with the col 4 locations prior to it, overwrite to key
	vxor.vv v7,v7,v6 # new v7= v6 xor prev v7
	vxor.vv v8,v8,v7 # new v8= v6 xor prev v7
	vxor.vv v9,v9,v8 # new v9= v6 xor prev v7
	 
	#storing new key in memory again, key size is 4 words of 32 bits each
	
	
	la s2, key
	li t0, 4
	vsetvli t0, t0, e8
	
	vse8.v v6, (s2)  #v6= 1st col
	addi s2, s2, 4    #increment index by 4 bytes
	vse8.v v7, (s2)  #v7= 2nd col
	addi s2, s2, 4
	vse8.v v8, (s2)  #v8= 3rd col
	addi s2, s2, 4
	vse8.v v9, (s2) #v9 contains the last column
	
	
	


#addRoundKey:
	#state array xor keys array

	la s5, stateArray
	la s2, key
	#s2= keys base address, s5=state array
	
	#load plaintext and key in vectors

	addi t0, zero, 16
	
	
	#loading key in v0, plaintext in v1
	
	vsetvli t0, t0, e8 #setting vector element lengths of 8 and vector length 16
	vle8.v v0, (s2)  #loading elements of 8 bits from keys
	vle8.v v1, (s5) #loading elements of 8 bit size in v1 from plaintext
	vxor.vv v2, v1, v0 #xor #v2 contains resulting state array WUHOOOOO

	#store bytes of v2 in space reserved for state array
	vse8.v v2, (s5) #storing resulting vector in memory (stateArray)
	
	
	addi t1, t1, -1
	bnez t1, rounds
	
	#subByteslookup
	#s3= base address of sbox
	la s4, plaintext
	la s3, sbox
	la s5, stateArray
	
	#16 elements of size 8 bits each are present
	addi t0, zero, 16
	
	vsetvli t0, t0, e8
	vle8.v v2, (s5)   #loading state array in v2
	vluxei8.v v3, (s3), v2  #v2 contains statearray, s3 is base address of sbox
	vse8.v v3, (s5) #store resulting vector in memory stateArray
	
	
#shiftRows

	#bear in mind that consecutive memory locations were taken as columns in key expansion 
	#i.e e.g 2x2 array: .data 1, 2, 3, 4  is represented as follows array = [1 ,3]
	#									[2, 4]

	#hardcoded an array containing offsets which when added to the base address of state array, will be our new memory addresses to access
	#in the required order
	
	
	addi t0, zero, 16
	la s1, stateArray
	la s2, shiftOffset
	
	vsetvli t0, t0, e8 #element size is 8 bits
	
	vle8.v v1, (s2) #loading the shift offsets in v1
	vluxei8.v v3, (s1), v1  # v3 will now hold the resulting statearray after shifting
	vse8.v v3, (s1) #store resulting vector v3 in memory stateArray
	
#keyExpansion:
 	la s2, key
 	la s3, sbox
 	la s4, rcon
	li t0,4
	
	
	#loading each column of key
	vsetvli t0, t0, e8
	vle8.v v6, (s2)  #v6= 1st col
	addi s2, s2, 4    #increment index by 4 bytes
	vle8.v v7, (s2)  #v7= 2nd col
	addi s2, s2, 4
	vle8.v v8, (s2)  #v8= 3rd col
	addi s2, s2, 4
	vle8.v v9, (s2) #v9 contains the last column\
	addi s2,s2,-12
	
	vsetvli t0, t0, e8 # setting e=8 bits
	
	#rotation
	la t3, keyRotationOffset
	la t4, keybuffer
	vle8.v v0, (t3) #v0 contains offset necessary for rotation
	vse8.v v9, (t4)
	vluxei8.v v10, (t4), v0 #v10 contains rotated elements in last column, ith v10 = mem [s2+ ith element of v0}
		
	#s-box lookup
	la s3, sbox
	vluxei8.v v10, (s3), v10 #each 8 byte element in v10 maps to corresponding data in sbox using lookup, result in v10
	vxor.vv v6,v6,v10  #first column v6 is xor-ed with the temporary column, and stored in v6
	li t0,1   # t0=1
	vsetvli t0,t0,e8
	la s4, rcon #base address
	add s4, s4, s11
	vle8.v v30, (s4)  #v30 contains rcon value, 4 elements of 8 bytes each
	add s11, s11, 1
	li t0,4
	vsetvli t0, t0, e8 #  4 elements of 8 bytes each
	
	#old key is overwritten by new key
	vxor.vv v6,v6,v30 # first col = rcon xor v6
	addi s4,s4,1  # increment rcon pointer
	
	#here we xor col with the col 4 locations prior to it, overwrite to key
	vxor.vv v7,v7,v6 # new v7= v6 xor prev v7
	vxor.vv v8,v8,v7 # new v8= v6 xor prev v7
	vxor.vv v9,v9,v8 # new v9= v6 xor prev v7
	 
	 #storing new key in memory again, key size is 4 words of 32 bits each
	 
	la s2, key
	li t0, 4
	vsetvli t0, t0, e8
	
	vse8.v v6, (s2)  #v6= 1st col
	addi s2, s2, 4    #increment index by 4 bytes
	vse8.v v7, (s2)  #v7= 2nd col
	addi s2, s2, 4
	vse8.v v8, (s2)  #v8= 3rd col
	addi s2, s2, 4
	vse8.v v9, (s2) #v9 contains the last column
	addi s2,s2,-12



	addRoundKey:
	#state array xor keys array

	la s5, stateArray
	la s2, key
	#s2= keys base address, s5=state array
	
	#load plaintext and key in vectors

	addi t0, zero, 16
	
	
	#loading key in v0, plaintext in v1
	
	vsetvli t0, t0, e8 #setting vector element lengths of 8 and vector length 16
	vle8.v v0, (s2)  #loading elements of 8 bits from keys
	vle8.v v1, (s5) #loading elements of 8 bit size in v1 from plaintext
	vxor.vv v2, v1, v0 #xor #v2 contains resulting state array WUHOOOOO

	#store bytes of v2 in space reserved for state array
	vse8.v v2, (s5) #storing resulting vector in memory (stateArray)


.section .data
vector_data:
.ascii "00 01 02 03 04 05 06 07 08 09\n"
.ascii "10 11 12 13 14 15 16 17 18 19\n"
.ascii "20 21 22 23 24 25 26 27 28 29\n"


