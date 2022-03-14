// Define Connections 7_Segment to 74HC595
// Define Connections Digit to NPNC1815

/* 
  Showing number 0-9 on a Common Anode 7-segment LED display 
  Displays the numbers 0-9 on the display, with one second in between. 
    A 
   --- 
F |   | B 
  | G | 
   --- 
E |   | C 
  |   | 
   --- 
    D 
  This example code is in the public domain. 
  
  Q1  -  A 
  Q2  -  B 
  Q3  -  C 
  Q4  -  C 
  Q5  -  D 
  Q6  -  E 
  Q7  -  G 
  05 -  D1 
  06 -  D2 
  07 -  D3 
  08 -  D4 
 */  
 
// Patterns for characters 0,1,2,3,4,5,6,7,8,9
int Segment[10] = { B01111110,  //0 
                    B00110000,  //1
                    B01101101,  //2
                    B01111001,  //3
                    B00110011,  //4
                    B01011011,  //5
                    B01011111,  //6
                    B01110000,  //7
                    B01111111,  //8
                    B01111011,  //9
                    };
                     
// Using Real_Time_Clock DS1302
#include <virtuabotixRTC.h>

// Creation of the Real Time Clock Object
virtuabotixRTC myRTC(6, 7, 8);

// Setup Digit of 7_Segment
#define D1 2
#define D2 3
#define D3 4
#define D4 5

// ST_CP pin 12
const int latchPin = 10;
// SH_CP pin 11
const int clockPin = 11;
// DS pin 14
const int dataPin = 12;
                     
int digit1, digit2, digit3, digit4;
void setup ()
{
  // Set the current date, and time in the following format:
  // seconds, minutes, hours, day of the week, day of the month, month, year
  //                 (ss, mn, hh, 1week, DD, MM, YY);
  //    myRTC.setDS1302Time(00, 33, 21, 7, 12, 3, 2022);
  
  // Setup pins as Outputs
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);

  // Setup pins Digit of 7_Segment as Outputs
  for(int i=2; i<6; i++){
    pinMode(i,OUTPUT);
  }

  // Open Serial for using data
  Serial.begin(115200);

}
void loop()
{
   
  // This allows for the update of variables for time or accessing the individual elements.
  myRTC.updateTime();

  Set_time(myRTC.hours,myRTC.minutes);
//  Set_hour(myRTC.hours);
//  Set_minute(myRTC.minutes);
  
  // Start printing elements as individuals
  Serial.print("Current Date / Time: ");
  Serial.print(myRTC.dayofmonth);
  Serial.print("/");
  Serial.print(myRTC.month);
  Serial.print("/");
  Serial.print(myRTC.year);
  Serial.print("  ");
  Serial.print(myRTC.hours);
  Serial.print(":");
  Serial.print(myRTC.minutes);
  Serial.print(":");
  Serial.println(myRTC.seconds);

}

void Set_time(int h,int m){

      digit2 = h / 10;  
      digit1 = h % 10; 

      Set_num(digit2);
      digitalWrite(D1, HIGH);  
      digitalWrite(D2, LOW);
      digitalWrite(D3, LOW);  
      digitalWrite(D4, LOW); 
      delay(1);
      Set_num(digit1);
      digitalWrite(D1, LOW);  
      digitalWrite(D2, HIGH);
      digitalWrite(D3, LOW);  
      digitalWrite(D4, LOW);  
      delay(1);
      
      digit4 = m / 10;  
      digit3 = m % 10;

      Set_num(digit4);  
      digitalWrite(D1, LOW);  
      digitalWrite(D2, LOW);
      digitalWrite(D3, HIGH);  
      digitalWrite(D4, LOW);
      delay(1); 
      
      Set_num(digit3);    
      digitalWrite(D1, LOW);  
      digitalWrite(D2, LOW);
      digitalWrite(D3, LOW);  
      digitalWrite(D4, HIGH);
      delay(1); 
     
}

void  Set_num(int num){
  
      // ST_CP LOW to keep LEDs from changing while reading serial data
      digitalWrite(latchPin, LOW);
      
      shiftOut(dataPin, clockPin, LSBFIRST, Segment[num]); 
      
      // ST_CP HIGH change LEDs
      digitalWrite(latchPin, HIGH);
}

 
