#include <ESP8266WiFi.h>
#include <WiFiUDP.h>
#include <Wire.h>
#include "Adafruit_DRV2605.h"
#define TCAADDR 0x70
Adafruit_DRV2605 drv;
IPAddress staticIP587_10(192,168,0,130);
IPAddress gateway587_10(192,168,0,1);
IPAddress subnet587_10(255,255,255,0);
WiFiUDP UDP;
boolean wifiConnected = false;
boolean udpConnected = false;
char packetBuffer[100];
char incomingPacket[100];
char incomingPacketDos[100];
int velocidad=1024;
int input;
uint8_t effect = 1;
unsigned int localPort = 80;
char valida[5];

void tcaselect(uint8_t i) {
  if (i > 7) return; 
  Wire.beginTransmission(TCAADDR);
  Wire.write(1 << i);
  Wire.endTransmission();  
}

void incializacion(){
  for (int i = 0; i < 7; i++) {
    tcaselect(i);
    delay(100);
    drv.begin();
    drv.selectLibrary(1);
    drv.setMode(DRV2605_MODE_INTTRIG); 
    delay(100);
    }
    tcaselect(0);
    drv.begin();
    drv.selectLibrary(1);
    drv.setMode(DRV2605_MODE_INTTRIG); 
    drv.setWaveform(0, 16);
    drv.setWaveform(1, 0); 
}

boolean connectWifi(){
  encender();
  boolean state = true;
  int i = 0;
  WiFi.mode(WIFI_STA);
  WiFi.begin("CIRAD","CIRAD2018");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print('.');
    delay(500);
  }
  apagar();
//  WiFi.config(staticIP587_10, gateway587_10, subnet587_10);
  Serial.print("Connected! IP address: ");
  Serial.println(WiFi.localIP());
  return state;
}


boolean connectUDP(){
  boolean state = false;
  if(UDP.begin(localPort) == 1){
    state = true;
  }
  return state;
}

void setup() {
  pinMode(2, OUTPUT);
  pinMode(16, OUTPUT);
  encender();
  Serial.begin(9600);
  wifiConnected = connectWifi();
  if(wifiConnected){
    udpConnected = connectUDP();
    if (udpConnected){
      
  Serial.println("CONECTADO");
      
      }
  }
  delay(100);
  apagar();
  incializacion();
}

void loop() {
  while(wifiConnected){
    if(udpConnected){
      encender();
      int packetSize = UDP.parsePacket();
      if(packetSize){
        int len = UDP.read(incomingPacket, 100);
        if (len > 0){
          incomingPacket[len] = 0;
        }
        Serial.printf("UDP packet contents: %s\n", incomingPacket);  
        char caracter1=incomingPacket[0];
        char caracter2=incomingPacket[3];
        char caracter3=incomingPacket[6];
        if(caracter1==valida[0] && caracter2==valida[1] && caracter3==valida[2]){
        }else{
          valida[0]=caracter1;
          valida[1]=caracter2;
          valida[2]=caracter3;
          ejeXMotor(caracter1);
          ejeYMotor(caracter2);
          ejeZMotor(caracter3);
        }
        encender();
      }
    }
  }
}

void encender(){
  digitalWrite(2,LOW);
  digitalWrite(16,LOW);
}

void apagar(){
  digitalWrite(2,HIGH);
  digitalWrite(16,HIGH);
}

void ejeXMotor(char caracter){
  if(caracter == '1'){
    tcaselect(2);
  }else if(caracter == '2'){
    tcaselect(1);
  }else if(caracter == '3'){
    tcaselect(4);
  }else if(caracter == '4'){
    tcaselect(5);
  }else if(caracter == '5'){
    tcaselect(0);
  } 
  encender();
  delay(100);
  apagar();
}

void ejeYMotor(char caracter){
  if (caracter == '1'){
    effect=1;
  }else if(caracter == '2'){
    effect=12; 
  }else if (caracter == '3'){
    effect=15;
  }
  drv.setWaveform(0, effect);
  drv.setWaveform(1, 0);  
  drv.go();
  delay(200);
}

void ejeZMotor(char caracter){
  tcaselect(3);  
  if(caracter == '1'){
    effect=0;
  }else if(caracter == '2'){
    effect=12;
  }else if(caracter == '3'){
    effect=15;
  }
  drv.setWaveform(0, effect);
  drv.setWaveform(1, 0);  
  drv.go();
  encender();
  delay(100);
  apagar();
}
