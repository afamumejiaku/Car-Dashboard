import controlP5.*;

ControlP5 cp5;
ControlP5 controlP5;
controlP5.Button  STARTENGINE, ACCELERATE, BRAKE, SELECTGEAR, CRUISECONTROL, FAULT,IGNITION,STARTED, LLIGHT, RLIGHT;


PImage cruise, dimlight, dooropen, enginecool, foglight,fulllight, hilldecent, hoodopen, keywarn, lanewarn, abs,battery,brake,check,fuel,hazard,rightlight,leftlight,oil,parkassist,service;
PImage trunkopen, wiper, eco,cloudy;
PFont font, font1, font2, font3, font4, font5;
String Mon,Ext,  hOURS,mINUTES,sECONDS,gearPosition;
boolean display = false;
float tickStart, tickEndsmall, tickEndbig,tick2Start, tick2Endsmall, tick2Endbig, textPosition;
int T = 140, S = 140, F= 350 , E=190, size=100,R=0,G=0,B=0,CF = #363636, CB = #000000, CA = #B9BBB6 ;
int startEngine=0, Gear=0, cruiseControl=0,engineFault=0,Engine=0,lLight=0,rLight=0,speed=0;



void setup(){
  size (3200, 1600);
  
  cruise = loadImage("cruise.jpg"); dimlight = loadImage("dimlight.jpg");dooropen = loadImage("dooropen.jpg"); enginecool= loadImage("enginecool.jpg");
  foglight = loadImage("foglight.jpg"); fulllight = loadImage("fulllight.jpg");hilldecent = loadImage("hilldecent.jpg");
  hoodopen = loadImage("hoodopen.jpg"); keywarn = loadImage("keywarn.jpg"); lanewarn = loadImage("lanewarn.jpg");
  abs = loadImage("abs.jpg"); battery = loadImage("battery.jpg"); brake = loadImage("brake.jpg");
  check = loadImage("check.jpg"); fuel= loadImage("fuel.jpg"); hazard= loadImage("hazard.jpg");
  leftlight = loadImage("leftlight.jpg"); rightlight = loadImage("rightlight.jpg"); oil = loadImage("oil.jpg");
  parkassist = loadImage("parkassist.jpg"); service= loadImage("service.jpg"); eco= loadImage("eco.jpg");
  trunkopen = loadImage("trunkopen.jpg"); wiper= loadImage("wiper.jpg");  cloudy= loadImage("Cloudy.png");
  
   cruise.resize(size,size);dimlight.resize(size,size);dooropen.resize(size,size);enginecool.resize(size*2/3,size*2/3);foglight.resize(size,size);fulllight.resize(size,size);
   hilldecent.resize(size,size);hoodopen.resize(size,size);keywarn.resize(size,size);lanewarn.resize(size,size);abs.resize(size,size);battery.resize(size,size);brake.resize(size,size);
   check.resize(size,size);fuel.resize(size*2/3,size*2/3);hazard.resize(size,size); rightlight.resize(size,size);leftlight.resize(size,size);oil.resize(size,size);parkassist.resize(size,size); 
   service.resize(size,size);trunkopen.resize(size,size);wiper.resize(size,size);eco.resize(size,size);cloudy.resize(size*3/2,size*3/2);
  
     
  font = createFont("digital-7.ttf", 100);
  font1 = createFont("Georgia", 80);
  font2 = createFont("digital-7.ttf", 250);
  font3 = createFont("Georgia", 10);
  font4 = createFont("Georgia", 1);
  font5 = createFont("Georgia", 110);
   
   cp5= new ControlP5(this);
   cp5.setFont(font1); 
   STARTENGINE = cp5.addButton("engine").setPosition(width/30,0.8*height).setSize(width*2/7,height/11).setLabel("START ENGINE").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); 
   IGNITION = cp5.addButton("engine1").setPosition(width/30,0.8*height).setSize(width*2/7,height/11).setLabel("IGNITION ON").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); IGNITION.hide(); 
   STARTED = cp5.addButton("engine2").setPosition(width/30,0.8*height).setSize(width*2/7,height/11).setLabel("CAR STARTED").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); STARTED.hide();
   ACCELERATE = cp5.addButton("accelerate").setPosition(width/2.9,0.8*height).setSize(width*2/7,height/11).setLabel("ACCELERATE").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); ACCELERATE.show();
   BRAKE = cp5.addButton("brake").setPosition(width/1.53,0.8*height).setSize(width*2/7,height/11).setLabel("BRAKE").setColorForeground(CF).setColorBackground(CB).setColorActive(CA);  BRAKE.show();
   SELECTGEAR = cp5.addButton("gear").setPosition(width/30,0.9*height).setSize(width*2/7,height/11).setLabel("SELECT GEAR").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); SELECTGEAR.show();
   CRUISECONTROL = cp5.addButton("cruise").setPosition(width/2.9,0.9*height).setSize(width*2/7,height/11).setLabel("CRUISE CONTROL").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); CRUISECONTROL.show();
   FAULT = cp5.addButton("fault").setPosition(width/1.53,0.9*height).setSize(width*2/7,height/11).setLabel("FAULT").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); FAULT.hide();
   LLIGHT = cp5.addButton("llight").setPosition(width/1.53,0.9*height).setSize(width*2/7,height/11).setLabel("LEFT SIGNAL").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); FAULT.show();   
   RLIGHT = cp5.addButton("rlight").setPosition(width/1.53,0.9*height).setSize(width*2/7,height/11).setLabel("RIGHT SIGNAL").setColorForeground(CF).setColorBackground(CB).setColorActive(CA); FAULT.hide();   
    
  float radius = height - (0.25 *height);
  tickStart = radius * 0.82 / 2;
  tickEndsmall = radius * 0.78 / 2;  
  tickEndbig = radius * 0.76 / 2;  
  textPosition = radius * 0.63 / 2; 
  tick2Start = radius * 0.26 / 2;
  tick2Endsmall = radius * 0.24 / 2;  
  tick2Endbig = radius * 0.22 / 2;  
  
}  
  
  
void draw(){ 
  background(#D3D3D3);
  
//Dashboard Background
  rectMode(CORNER);
  fill(R,G,B); 
  stroke(#C0C0C0);    strokeWeight(10);   
  rect(0.015625*width , 0.03125*height, width - (0.03125*width), height - (0.25 *height),350);
  
 //startEngine=0, acceleRate=0,braKe=0, selectGear=0, cruiseControl=0,engineFault=0; 
  if(startEngine==1){
//Tachometer
  ellipseMode(CENTER);
  fill(R,G,B); 
  stroke(#C0C0C0);    strokeWeight(10);   
  float tachometerXposition = width/5; float tachometerYposition = width/5;
  ellipse(tachometerXposition , tachometerYposition , width/3.1 , width/3.1 );
  //tick
    int b=0;
    for (int a = 140; a < 400; a+=8,b=b+1) {
      float angle = radians(a);
      float x1 = tachometerXposition + cos(angle) * tickStart;
      float y1 = tachometerYposition + sin(angle) * tickStart;
      float x2 = tachometerXposition + cos(angle) * tickEndsmall;
      float y2 = tachometerYposition + sin(angle) * tickEndsmall;
      float x3 = tachometerXposition + cos(angle) * tickEndbig;
      float y3 = tachometerYposition + sin(angle) * tickEndbig;
      if(b<25){stroke(255);}
        else {stroke(255,0,0);}
      if(b%2 == 1 && b<26){
        strokeWeight(6);
        line(x1,y1,x2,y2); 
        }
       else if(b<26)
       {
        strokeWeight(10);
        line(x1,y1,x3,y3); 
        }
         else if(b%2 == 1)
       {
        int d = a - 8;
        for (int c = 1; c < 16; c+=1.5) {
        angle = radians(d +c);
        float x4 = tachometerXposition + cos(angle) * tickStart;
        float y4 = tachometerYposition + sin(angle) * tickStart;
        float x5 = tachometerXposition + cos(angle) * tickEndsmall;
        float y5 = tachometerYposition + sin(angle) * tickEndsmall;
        strokeWeight(6);
        line(x4,y4,x5,y5); 
          }
       }
        else{
         strokeWeight(10);
        line(x1,y1,x3,y3); 
        }
    }
      tachometerXposition = width/5.3;  tachometerYposition = width/4.8;
      int num =0;
    for (int a = 140; a < 400; a+=32.5) {
        float angle = radians(a);
        float x6 = tachometerXposition + cos(angle) * textPosition;
        float y6 = tachometerYposition + sin(angle) * textPosition;
        textSize(60); fill(255);
        text(num,x6,y6);
        num+=1;
     }
 
  
//Speedometer
  ellipseMode(CENTER);
  fill(R,G,B); 
  stroke(#C0C0C0);    strokeWeight(10);  
  float speedometerXposition = width - width/5; float speedometerYposition = width/5;
  ellipse(speedometerXposition , speedometerYposition , width/3.1 , width/3.1 );
    //tick
   b=0;
  for (int a = 140; a < 400; a+=8,b=b+1) {
    float angle = radians(a);
    float x1 = speedometerXposition + cos(angle) * tickStart;
    float y1 = speedometerYposition + sin(angle) * tickStart;
    float x2 = speedometerXposition + cos(angle) * tickEndsmall;
    float y2 = speedometerYposition + sin(angle) * tickEndsmall;
    float x3 = speedometerXposition + cos(angle) * tickEndbig;
    float y3 = speedometerYposition + sin(angle) * tickEndbig;
    if(b<25){stroke(255);}
      else {stroke(255,0,0);}
    if(b%2 == 1 ){
      strokeWeight(6);
      line(x1,y1,x2,y2); 
      }
     else 
     {
      strokeWeight(10);
      line(x1,y1,x3,y3); 
      }
    
  }
    speedometerXposition =  width - width/4.65; speedometerYposition = width/4.8;
    num =0;
  for (int a = 140; a < 400; a+=32.5) {
      float angle = radians(a);
      float x6 = speedometerXposition + cos(angle) * textPosition;
      float y6 = speedometerYposition + sin(angle) * textPosition;
      textSize(60);
      fill(255);
      text(num,x6,y6);
      num+=20;
   }
 
  
  //Fuel Indicator
  float fuelXposition = width - width/5; float fuelYposition = width/3.2;
    //tick
   b=0;
  for (int a = 190; a < 370; a+=20,b=b+1) {
    float angle = radians(a);
    float x1 = fuelXposition + cos(angle) * tick2Start;
    float y1 = fuelYposition + sin(angle) * tick2Start;
    float x2 = fuelXposition + cos(angle) * tick2Endsmall;
    float y2 = fuelYposition + sin(angle) * tick2Endsmall;
    float x3 = fuelXposition + cos(angle) * tick2Endbig;
    float y3 = fuelYposition + sin(angle) * tick2Endbig;
    if(b<2){stroke(255,255,0);}
      else {stroke(255);}
    if(b%2 == 1 ){
      strokeWeight(6);
      line(x1,y1,x2,y2); 
      }
     else 
     {
      strokeWeight(10);
      line(x1,y1,x3,y3); 
      }
    }
      textSize(30);
      fill(255);
      text("E",fuelXposition + cos(radians(190)) * tick2Start,fuelYposition + sin(radians(170)) * tick2Start);
      text("F",fuelXposition + cos(radians(380)) * tick2Start,fuelYposition + sin(radians(170)) * tick2Start);
 //HAND
   stroke(255); strokeWeight(4);
  line(fuelXposition,fuelYposition,fuelXposition + cos(radians(F)) * tick2Endbig,fuelYposition + sin(radians(F)) * tick2Endbig);
   
   //Engine Temperature
  float engineXposition = width/5; float engineYposition = width/3.2;
    //tick
   b=0;
  for (int a = 190; a < 370; a+=20,b=b+1) {
    float angle = radians(a);
    float x1 = engineXposition + cos(angle) * tick2Start;
    float y1 = engineYposition + sin(angle) * tick2Start;
    float x2 = engineXposition + cos(angle) * tick2Endsmall;
    float y2 = engineYposition + sin(angle) * tick2Endsmall;
    float x3 = engineXposition + cos(angle) * tick2Endbig;
    float y3 = engineYposition + sin(angle) * tick2Endbig;
    if(b<6){stroke(255);}
      else {stroke(255,0,0);}
    if(b%2 == 1 ){
      strokeWeight(6);
      line(x1,y1,x2,y2); 
      }
     else 
     {
      strokeWeight(10);
      line(x1,y1,x3,y3); 
      }
  }
      textSize(30);
      fill(255);
      text("C",engineXposition + cos(radians(190)) * tick2Start,engineYposition + sin(radians(170)) * tick2Start);
      text("H",engineXposition + cos(radians(380)) * tick2Start,engineYposition + sin(radians(170)) * tick2Start);
   //HAND
   stroke(255); strokeWeight(4);
  line(engineXposition,engineYposition,engineXposition + cos(radians(E)) * tick2Endbig,engineYposition + sin(radians(E)) * tick2Endbig);

  if(Engine==1){
  image(leftlight,0.34 * width,0.1 *height);
  image(fulllight,0.41 * width,0.1 *height);
  image(dimlight,0.48 * width,0.1 *height);
  image(foglight,0.55 * width,0.1 *height);
  image(rightlight,0.62 * width,0.1 *height);
  image(hilldecent,0.34 * width,0.67 *height);
  image(parkassist,0.41 * width,0.67 *height);
  image(eco,0.48 * width,0.67 *height);
  image(lanewarn,0.55 * width,0.67 *height);
  image(cruise,0.62 * width,0.67*height);
   image(enginecool,0.19 * width,0.58 *height);
  image(fuel,0.79 * width,0.58 *height);
  image(service,0.83 * width,0.3125 *height);
  image(check,0.74 * width,0.3125 *height);
  image(dooropen,0.6 * width,0.3125 *height);
  image(keywarn,0.365 * width,0.3125 *height);
  image(oil,0.14 * width,0.3125 *height);
  image(brake,0.23 * width,0.3125 *height);
  image(wiper,0.83 * width,0.425 *height);
  image(abs,0.74 * width,0.425 *height);
  image(trunkopen,0.6 * width,0.425 *height);
  image(hoodopen,0.365 * width,0.425*height);
  image(hazard,0.14 * width,0.425 *height);
  image(battery,0.23 * width,0.425 *height);}
  
   if(cruiseControl==1){image(cruise,0.62 * width,0.67*height);}
    if(engineFault==1) {image(hazard,0.14 * width,0.425 *height);}
     if(lLight==1){image(leftlight,0.34 * width,0.1 *height);}
    if(rLight==1) {image(rightlight,0.62 * width,0.1 *height);}

  
  //speedometerhand
   speedometerXposition = width - width/5; speedometerYposition = width/5;
   stroke(255); strokeWeight(4);
  line(speedometerXposition,speedometerYposition,speedometerXposition + cos(radians(S)) * tickEndbig,speedometerYposition + sin(radians(S)) * tickEndbig );  
    textSize(60); fill(255); textAlign(CENTER);
  text("MPH", speedometerXposition,width/8);
   //tachometerhand
  tachometerXposition = width/5; tachometerYposition = width/5;
   stroke(255); strokeWeight(4);
  line(tachometerXposition,tachometerYposition,tachometerXposition + cos(radians(T)) * tickEndbig,tachometerYposition + sin(radians(T)) * tickEndbig );
  textSize(60); fill(255); textAlign(CENTER);
  text("x1000rpm", tachometerXposition,width/8);
  
 
  
  //Control Display
  rectMode(CENTER);
  fill(R,G,B); 
  stroke(#C0C0C0);    strokeWeight(10);   
  rect(width/2 , (height -(0.17 *height))/2, width/5.3, height/2.1,35);
  
    if(speed == 0){
    if(Gear==0){//Draw Time
    textAlign(LEFT); 
      int seconds = second(); int minutes = minute(); int hours = hour();
      if(hours>9){hOURS = String.valueOf(hours);}else{hOURS = "0"+String.valueOf(hours);}
      if(minutes>9){mINUTES = String.valueOf(minutes);}else{mINUTES = "0"+String.valueOf(minutes);}
      if(seconds>9){sECONDS = String.valueOf(seconds);}else{sECONDS = "0"+String.valueOf(seconds);}
      String TIME =  hOURS +" : " + mINUTES + " : " + sECONDS;       fill(255 ,255, 255); textFont(font1);   
      fill(135,206,250);text(TIME,width/2.4 , (height -(0.4 *height))/2); //Display Time
      //Draw Date   
      int day = day(); int mon = month(); int year = year();  
      String Day = String.valueOf(day);       if (mon==1){Mon = "Jan";} else if (mon==2){Mon = "Feb";}else if (mon==3){Mon = "Mar";}else if (mon==4){Mon = "Apr";}else if (mon==5){Mon = "May";}
      else if(mon==6){Mon="June";}else if(mon==7){Mon="July";}else if(mon==8){Mon="Aug";}else if(mon==9){Mon="Sept";}else if(mon==10){Mon="Oct";}else if(mon==11){Mon="Nov";}else{Mon="Dec";} 
      if (day==0){Ext = "st";} else if (day==2){Ext = "nd";}else {Ext = "th";} //Date Number text
      String Year = String.valueOf(year);  String Date = Day+ Ext +" " + Mon +" " +Year;   textFont(font1);    fill(255 ,255, 255);    
      fill(135,206,250);text(Date, width/2.4 , (height -(0.25 *height))/2); //Display Date
      fill(135,206,250);text(15 + " Cloudy", width/2.15 ,(height -(0.10 *height))/2);
      image(cloudy, width/2.4 ,(height -(0.20 *height))/2);
      fill(135,206,250);text("Lubbock, Tx", width/2.4 ,(height +(0.05 *height))/2);
    }if(Gear==1){gearPosition = "P";fill(255, 255, 255); textSize(250); text(gearPosition, width/2 ,(height -(0.15 *height))/2); }
     else if(Gear==2){gearPosition = "R"; fill(255,0,0); textSize(250); text(gearPosition, width/2 ,(height -(0.15 *height))/2); }
     else if(Gear==3){gearPosition = "N"; fill(255, 255, 255); textSize(250); text(gearPosition, width/2 ,(height -(0.15 *height))/2); }
     else if(Gear==4){gearPosition = "D"; fill(0,128,0); textSize(250); text(gearPosition, width/2 ,(height -(0.15 *height))/2); }
    }
    else{     textFont(font); fill(255, 255, 255);textSize(250);text(speed, width/2 ,(height - (0.15 *height))/2); }
   
    
  }
  
 
 }
   public void engine(){
     startEngine=1;  Engine=1;
     STARTED.hide();IGNITION.show();STARTENGINE.hide();
   }
     public void engine1(){
     Engine=0;
     STARTED.show();IGNITION.hide();STARTENGINE.hide();
   }
     public void engine2(){
     startEngine=0;
     STARTED.hide();IGNITION.hide();STARTENGINE.show();
   }
   
     public void accelerate(){
     if(Gear==1 || Gear==3){S=S+3;} T=T+2;
     speed = speed + 3; 
     if(speed>=170){speed=170;}
     if(S>=390){S=390;}
     if(T>=390){T=390;}
   }
   
    public void brake(){
     startEngine=1;
     S=S-3; T=T-3;
     speed = speed - 3; 
     if(speed<=0){speed=0;}
     if(S<=140){S=140;}
     if(T<=140){T=140;}
   }
   
     
    public void gear(){
     Gear= Gear +1;
     T=140;
     if(Gear==5){Gear=0;}
     
   }
   
   public void cruise(){
     if(cruiseControl==0){cruiseControl=1;}else{cruiseControl=0;}
   }
   
      public void llight(){
     LLIGHT.hide();RLIGHT.show();FAULT.hide();
     if(lLight==0 ){lLight=1; rLight=0;}else{lLight=0;}
   }
     public void rlight(){
     FAULT.show();LLIGHT.hide();RLIGHT.hide();
     if(rLight==0 ){rLight=1; lLight=0;}else{rLight=0;}
   }
   
     public void fault(){
     FAULT.hide();LLIGHT.show();RLIGHT.hide(); 
    if(engineFault==0){engineFault=1;}else{engineFault=0;}
   }
