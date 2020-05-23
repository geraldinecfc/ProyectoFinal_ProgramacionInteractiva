class Estrellas{
 float x,y,z;
 float dx,dy;
 float t;
 
 float a;
 float v;


 Estrellas(){
   this.x = random(-600,600);
   this.y = random(-600,600);
   this.z = random(-600,600);
   this.t = random(0.05,0.8);
   this.a = random(TWO_PI);

   this.v = 0.005;
   
   this.dx = cos(this.a)*this.v;
   this.dy = sin(this.a)*this.v;
   
    
 }
 
 void display(){
   noStroke();
   fill(c);
   ellipse(this.x,this.y,this.t,this.t);
 }
 
 void mover(){
   this.x += this.dx;
   this.y += this.dy;
   
 }
 

}
