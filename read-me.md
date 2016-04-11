Write a program to simulate this process.

Use the following guidelines.
-      Use a stack to represent the list of workers.
-      Use a queue to represent the list of people waiting to work.
-      Simulate a manager rolling a dice by randomly generating a number 1 through 6.  
-      At the end of each three-month interval, show the dice roll, who was fired, new worker list, and new waiting list.
-      Allow simulation to repeat until the user chooses to end it

Input: Ask the user for the number of people needing jobs (>6). Randomly generate that number of ID numbers for the workers. Make sure no two workers have the same ID.  

Sample output for 12 people needing jobs:
How many people do you have? > 12

Initial Waiting List [111, 222, 333, 444, 555, 666, 777, 888, 999, 101, 201, 301]

Workers List      
1st hired            111               
2nd hired            222               
3rd hired            333              
4th hired            444              
5th hired            555             
6th hired            666              

Waiting List [777, 888, 999, 101, 201, 301]

End of Three Months -------- Dice roll = 3

666 is fired.
555 is fired.
444 is fired.

Workers List           
1st hired             111                
2nd hired             222                 
3rd hired             333                
4th hired             777                
5th hired             888                 
6th hired             999                 

Waiting List [101, 201, 301, 666, 555, 444]
