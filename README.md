# Online Clothes Shop

It is a simple online clothes shop with many categories made with assemply language in emu8086


### Prerequisites

You need to install emu 8086 to run the code 
and need to understand the assembly language and how to write a code with assembly

### Installing

First go to google and write download emu 8086
then set up the program
then open it and finally, you have an emu 8086 on your device!


## Running the Code

Now you can open it and choose new and create then copy the code and paste it inside emu 8086,
then click on emulate and then click on run and it will run the code
Say what the step will be

### Explain the main code of emu8086

After make a new file it will automaticly give you 

```
org 100h
```
and that means the code will start from offset 100 and h because we write digits in hexadecimal

and will be there ret

```
ret
```
and that we use it to return the result


### Some codes of project

in these codes i named a labels with the messages that will appear once the user run the code

```
a1  db 10,13,'***********************YARA********************$'
a2  db 10,13,'*********      Online CLOTHES SHOP     *********$' 
a3  db 10,13,'***********************************************$'

a4  db 10,13,'                    THE LIST:$'

a5  db 10,13,'Choose Category please: $'
```
and it ends with $ to the emu understand that i stop here and don't give me another data from memory

in this code i used the int 21h with ah,09 to display the content of the address i give to it 
```
 mov ah,9
 mov dx,offset a1
 int 21h
 mov dx,offset a2
 int 21h                
 mov dx,offset a3
 int 21h         
```
and here i use int 21h with ah,02 to display the char of that ASCII code which is a new line
 ```
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13
 int 21h 
```

and here i use int 21h with ah,01 to make the ascii code of the enterred char from user to go to al then i sub  48 from it which in the ascii tabel it is a 0 ,
then i compare the result with 1
if they equal i will jump to a label called Hoodies_Category 
 ```
 mov ah,1
 int 21h                
 mov bh,al
 sub bh,48
 
 cmp bh,1
 je Hoodies_Category
```

and here i made a label called invalid: and that is called when the user enter a char doesn't exist and inside it i made the code for a new line ,
then called the message that said that invalid input then jump for exit label.
```
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
```
second label is confirmed: and that is called when the user confirm his order and inside it i made the code for a new line ,
then called the message that said that the order confirmed successfully then jump for exit label.
``` 
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
```

and this is exit label which called after the user finish his order or make a fault ,then i ended the main and the main project
 ```
 Exit:
 mov ah,4ch
 int 21h
   main endp
     end main 
``` 

## Resources

*  [Assembly Course](https://youtube.com/playlist?list=PLfpF16M7eBGOzTukzFTwUii3B1PQQD022&si=LkhAjjS15db4mF4G) - assembly syntax lectuers by Dr/Sara El-Metwally
*  emu and assembly syntax sections by Teacher Assistent/Ola Magdy
* [emu playlist](https://youtube.com/playlist?list=PL9YV3aQrrVgCFS3UxYk-9dbXkvT3NS04c&si=6vKMXTr2pWJG6aux) - additional resources
* [English emu playlist](https://youtube.com/playlist?list=PLEacQ4Oes1V1q-LQh9i0O71aDftqPAqzS&si=WBuqQ7DUP7ALb5Ao) 


## Version

I use [emu8086](https://emu8086-microprocessor-emulator.en.softonic.com/download) version for coding.  

## Authors

[ **Yara Mohamed**](https://github.com/theyara)



## License

This project is licensed to me under the care of Dr/Sara El-metwally in CS department at FCIS MU University.

