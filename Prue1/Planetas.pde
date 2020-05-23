class Planeta {
 
    void Dibujar(){
  
    //sol
   stroke(#D33C06);
   fill(#F7BB08);
   rotateZ(rotar_z0); 
   rotar_z0 += radians(0.1);
   sphere(8);
     
     //planeta1 Mercurio
     pushMatrix();
     stroke(#3A1801);
     fill(#C75F39);
       rotateZ(rotar_z); 
       rotar_z += radians(0.008);
       translate(12,0,0);
       sphere(1.2);
     popMatrix();
      
      //planeta2 Venus
     pushMatrix();
     stroke(#3A1801);
     fill(#F8C061);
        rotateZ(rotar_z1); 
        rotar_z1 += radians(0.05);
        translate(15,0,0);
        sphere(1.7);
     popMatrix();
        
     //planeta4 Marte
     pushMatrix();
     fill(#F20B0B);
     stroke(#F7503D);
        rotateZ(marte); 
        marte += marte*0.0002;
        translate(25,0,0);
        sphere(1.7);
    popMatrix();
        
      //planeta5 Jupiter
     pushMatrix();
     fill(#F4D2BB);
     stroke(#AB5D29);
        rotateZ(rotar_z3); 
        rotar_z3 += radians(0.0006);
        translate(30,0,0);
        sphere(4);
    popMatrix();
        
     //planeta6 Saturno
     pushMatrix();
     fill(#FDD859);
     stroke(#4F4E4C);
        rotateZ(saturno); 
        saturno +=  saturno*0.0001;
        translate(40,0,0);
        sphere(4.2);
    popMatrix();
    
     //planeta7Urano
    pushMatrix();
    fill(#A8D7D0);
    stroke(#32AB99);
        rotateZ(rotar_z5); 
        rotar_z5 += 0.0005;
        translate(55,0,0);
        sphere(3);
    popMatrix();
       
      //planeta8Neptuno
     pushMatrix();
     fill(#535CE5);
     stroke(#262D8F);
        rotateZ(neptuno); 
        neptuno += neptuno * 0.0005/2;
        translate(70,0,0);
        sphere(3);
    popMatrix();
      
     //planeta3 Tierra
     translate(20,0,0);
     fill(#CDD6FA);
     stroke(#4188DE);
        rotateZ( rotar_z7);
         rotar_z7 += radians(0.8);
         sphere(1.7);
    
     //luna 
     pushMatrix();
     fill(255);
     stroke(175);
       translate(3,0,0);
       rotateZ( rotar_z8);
       rotar_z8 += radians(0.2);
       sphere(0.5);
     popMatrix();     
  }
}
