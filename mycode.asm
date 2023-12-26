org 100h

.model large

.stack 1000h

.data

;welcome page

a1  db 10,13,'***********************YARA********************$'
a2  db 10,13,'*********      Online CLOTHES SHOP     *********$' 
a3  db 10,13,'***********************************************$'

a4  db 10,13,'                    THE LIST:$'

a5  db 10,13,'Choose Category please: $'

a16 db 10,13,'    -Enter 1 to show the Clothes List: $'

a31 db 10,13,'            -Pick Your order: $'

a32 db 10,13,'               -Enter Quantity:$ '

a33 db 10,13,'           Invalid Input!, Try again$'

a34 db 10,13,'            Total Price is : $'

a37 db 10,13,'       If you want to confirm your order please press 1  $'

a38 db 10,13,'            YOUR ORDER CONFIRMED SUCCESSFULLY!  $'

a35 db 10,13,'                  2.Clothes List $'

a36 db 10,13,'                  3.Exit $' 

a6  db 10,13,'                    1.Hoodies $'
a7  db 10,13,'                    2.Jackets $'
a8  db 10,13,'                    3.Pants $' 

a9  db 10,13,'*********        Hoodies Category     *********$'
a10 db 10,13,'       1.Love Yourself Hoodie            300EGP $'
a11 db 10,13,'       2.The Magic Hoodie                300EGP $'
a12 db 10,13,'       3.Hearts Hoodie                   350EGP $'
a13 db 10,13,'       4.Darkness Hoodie                 350EGP $'
a14 db 10,13,'       5.Future Hoodie                   350EGP $'
a15 db 10,13,'       6.YARA Hoodie                     400EGP $'
 
a17 db 10,13,'*********        Jackets Category     *********$'
a18 db 10,13,'       1.Love Yourself Black             600EGP $'
a19 db 10,13,'       2.Leather white                   700EGP $'
a20 db 10,13,'       3.Hearts Black                    700EGP $'
a21 db 10,13,'       4.Cropped Leather                 750EGP $'
a22 db 10,13,'       5.Colorfull Jacket                750EGP $'
a23 db 10,13,'       6.HandMade Jacket                 800EGP $' 
                    
a24 db 10,13,'*********        Pants Category     *********$'
a25 db 10,13,'       1.Love Yourself Pants             300EGP $'
a26 db 10,13,'       2.White Jeans Pants               300EGP $'
a27 db 10,13,'       3.Hearts Black Pants              300EGP $'
a28 db 10,13,'       4.Wide Leg Pants                  350EGP $'
a29 db 10,13,'       5.Jeans Charleston Pants          400EGP $'
a30 db 10,13,'       6.Cropped Charleston Pants        400EGP $'                    

.code
main proc
    mov ax,@data
    mov ds,ax
;main page               
 mov ah,9
 mov dx,offset a1
 int 21h
 mov dx,offset a2
 int 21h                
 mov dx,offset a3
 int 21h              
;new 2 lines
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
;show clothes list
 mov ah,9
 mov dx,offset a16
 int 21h
 mov ah,1
 int 21h                
 mov bh,al
 sub bh,48 
 
 cmp bh,1      
 
 je Clothes_List
 
 jmp Invalid
 
Clothes_List:
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h
 
 mov ah,9
 mov dx,offset a4
 int 21h
 mov dx,offset a6
 int 21h                
 mov dx,offset a7
 int 21h       
 mov dx,offset a8
 int 21h         
     
 
 mov dx,offset a5
 int 21h
 mov ah,1
 int 21h                
 mov bh,al
 sub bh,48
 
 cmp bh,1
 je Hoodies_Category
 
 cmp bh,2
 je Jackets_Category
 
 cmp bh,3
 je Pants_Category      
 
 jmp Invalid
 
Hoodies_Category:
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h    
 
 mov ah,9
 mov dx,offset a9
 int 21h
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a10
 int 21h
 mov dx,offset a11
 int 21h                
 mov dx,offset a12
 int 21h       
 mov dx,offset a13
 int 21h           
 mov dx,offset a14
 int 21h         
 mov dx,offset a15
 int 21h          
 
 mov dx,offset a31
 int 21h          
 
 mov ah,1
 int 21h                
 mov bl,al
 sub bl,48
 
 cmp bl,1
 je EGP300
 
 cmp bl,2
 je EGP300
 
 cmp bl,3
 je EGP350 
 
 cmp bl,4
 je EGP350
 
 cmp bl,5
 je EGP350 
 
 cmp bl,6
 je EGP400 
 
 JMP Invalid
 
Jackets_Category:
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a17
 int 21h
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a18
 int 21h
 mov dx,offset a19
 int 21h                
 mov dx,offset a20
 int 21h       
 mov dx,offset a21
 int 21h           
 mov dx,offset a22
 int 21h         
 mov dx,offset a23
 int 21h          
 
 mov dx,offset a31
 int 21h     
 
 mov ah,1
 int 21h                
 mov bl,al
 sub bl,48
 
 cmp bl,1
 je EGP600
 
 cmp bl,2
 je EGP700
 
 cmp bl,3
 je EGP700 
 
 cmp bl,4
 je EGP750
 
 cmp bl,5
 je EGP750 
 
 cmp bl,6
 je EGP800 
 
 JMP Invalid
 
 ;EXIT
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a36
 int 21h
 
 mov ah,1
 int 21h
 mov bh,al
 
 cmp bh,2
 jmp Exit
 
 Pants_Category:
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a24
 int 21h
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a25
 int 21h
 mov dx,offset a26
 int 21h                
 mov dx,offset a27
 int 21h       
 mov dx,offset a28
 int 21h           
 mov dx,offset a29
 int 21h         
 mov dx,offset a30
 int 21h          
 
 mov dx,offset a31
 int 21h     
 
 mov ah,1
 int 21h                
 mov bl,al
 sub bl,48
 
 cmp bl,1
 je EGP300
 
 cmp bl,2
 je EGP300
 
 cmp bl,3
 je EGP300 
 
 cmp bl,4
 je EGP350
 
 cmp bl,5
 je EGP400 
 
 cmp bl,6
 je EGP400 
 
 JMP Invalid       
 
EGP300:
 mov bl,30
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h  
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 jmp Invalid   
 
EGP350:
 mov bl,35
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 
 jmp Invalid  
 
EGP400:
 mov bl,40
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 
 jmp Invalid
  
EGP600:
 mov bl,60
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 
 jmp Invalid
  
EGP700:
 mov bl,70
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 
 jmp Invalid
 
EGP750:
 mov bl,75
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 
 jmp Invalid
   
 
EGP800:
 mov bl,80
 mov dx,offset a32
 mov ah,9
 int 21h
 
 mov ah,1
 int 21h
 sub al,48
 
 mul bl
 
 aam 
 
 mov cx,ax
 add ch,48
 add cl,48
 
 mov dx, offset a34
 mov ah,9
 int 21h
 
 mov ah,2
 mov dl,ch
 int 21h
 
 mov dl,cl
 int 21h
 
 mov dl,'0'
 int 21h
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx, offset a37
 int 21h
 
 mov ah,9
 mov dx,offset a35
 int 21h          
 
 mov ah,9
 mov dx,offset a36
 int 21h 
 
 mov ah,9
 mov dx,offset a5
 int 21h         
 
 mov ah,1
 int 21h
 sub al,48   
 
 cmp al,1
 je Confirmed
 
 cmp al,2
 je Clothes_List
 
 cmp al,3
 je Exit
 
 
 jmp Invalid 
 
Invalid:

 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a31
 int 21h
 jmp Exit 
 
 
Confirmed:

 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
 
 mov ah,9
 mov dx,offset a38
 int 21h
 jmp Exit 
 
 
Exit:
 mov ah,4ch
 int 21h
   main endp
     end main 
   
   