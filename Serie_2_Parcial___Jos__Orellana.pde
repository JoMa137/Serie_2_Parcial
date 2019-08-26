//Declaracion de variables para moviemiento del circulo y rectangulo
float x,y,z,c;

void setup() {
  size(300,300);
  background(0);
 
  
  //Se le asigna valor a las variables de cada figura
  x=60;
  y=40;
  z=40;
  c=60;
}

//Se declaran las variables de velocidad y se les asigna un valor
int linea=10;
int v=2;
int v2=1;


void draw(){
 fill(0);
 rect(0,0,width,height);
 
 stroke(0);
 //line(0,0,width,height);
 
 //point(0,30);
 
 //point(50,30);
 

 fill(random(255),random(255),random(255));
 rect(x,y,50,30);
 fill(255,164,89);
 ellipse(z,c,90,90);
 
 //se le suman las velocidades a las variables de posicion de cada figura
 x+=v;
 y+=v2;
 z+=v;
 c+=v2;
 
 //Condiciones de rebote del rectangulo
 if((x>240) || (x<0)){
   v*=-1;
 }
 
 if((y>height) || (y<0)){
  v*=-1; 
 }
 //Condiciones de rebote del circulo
 if((z>300-90) || (z<0) ){
   v*=-1;
 }
 if((c>height) || (c<0)){
  v2*=-1; 
 }
 
 
 stroke(255);
 line(0,linea,width,linea);
 
 //Se le suma una velocidad a la variable de posición de la linea horizontal
  linea=linea+v2;
  
  //Condicion de rebote para la linea horizontal
 if((linea>height) || (linea<0)){
   v2*=-1;
 }
 
  
}
