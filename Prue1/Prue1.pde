import oscP5.*;
import netP5.*;

//este es el objeto que recibe
OscP5 oscP5;

//esta será la dirección donde voy a enviar mis mensajes
NetAddress direccionRemota;

float rotar_z0;
float rotar_z;
float rotar_z1;
float rotar_z2;
float marte;
float rotar_z3;
float rotar_z4;
float saturno;
float rotar_z5;
float rotar_z6;
float neptuno;
float rotar_z7;
float rotar_z8;
float x,y,z;
float c;
Planeta planetas; 
ArrayList <Estrellas> estrellas;
void setup(){
  size(912,750,P3D);
 oscP5 = new OscP5(this, 12001);

  // inicializo el objeto NetAddress pasando la dirección IP y el puerto de los mensajes salientes
  // 127.0.0.1 es mi localhost
  direccionRemota = new NetAddress("192.168.1.74", 12001);

  rotar_z=0;
  rotar_z=1;
  rotar_z1=1;
   rotar_z2=1;
  marte=.004;
  rotar_z3=1;
  saturno=.001;
  rotar_z5=1;
  neptuno =.0001;
  rotar_z7=1;
  rotar_z8=1;    
  x= 1;
  y=1;
  z=1;
  c=1;
  planetas= new Planeta();
    
   estrellas = new ArrayList <Estrellas>();
  for (int i= 0; i<3000; i++){
    estrellas.add(new Estrellas());
}
}

void draw(){ 
  background(0);
  camera(x,y,120,
          10,10,0,
          0,0,-1);
          translate(10,10,0);
          
          for (Estrellas e:estrellas){
    e.display();
    e.mover();
  }          
          planetas.Dibujar();     
}

void mousePressed() {
  //genero un nuevo mensaje
  OscMessage mensaje = new OscMessage("/mouseX");

  //le agrego los datos, en este caso la posición en X del mouse
  mensaje.add(mouseX); 

  //envío el mensaje 
  oscP5.send(mensaje, direccionRemota);
}

//cada vez que se recibe un mensaje de osc en el puerto asignado, se llama esta función
void oscEvent(OscMessage theOscMessage) {  
  //si el mensaje está etiquetado como "/rotar_z0"
  if (theOscMessage.checkAddrPattern("/marte") == true) {
    //asigna el valor entero a la variable x
    marte= theOscMessage.get(0).intValue();
  }

  //si el mensaje está etiquetado como "/rotar_z4"
  if (theOscMessage.checkAddrPattern("/saturno") == true) {
    //asigna el valor entero a la variable y
    saturno = theOscMessage.get(0).intValue();
  }
  
   //si el mensaje está etiquetado como "/rotar_z5"
  if (theOscMessage.checkAddrPattern("/neptuno") == true) {
    //asigna el valor entero a la variable t
    neptuno = theOscMessage.get(0).intValue();
  }
  
   if (theOscMessage.checkAddrPattern("/x") == true) {
    //asigna el valor entero a la variable t
    x = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/y") == true) {
    //asigna el valor entero a la variable t
    y = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/c") == true) {
    //asigna el valor entero a la variable t
    c = theOscMessage.get(0).intValue();
  }
}
