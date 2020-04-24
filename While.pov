/*
 * El siguiente código me permite dibujar una esfera.
 * Pone e esferas en posición aleatorea.
*/

#include "colors.inc" //Para incluir nombres de colores

//Tamaño del radio
//#declare radio =.05;

//Semilla para inicializar los números aleatoreos.
#declare semilla=49147;

//Número de esferas a crear
#declare numero_esferas=51;

//Inicializando el generador pseudo-aleatoreo
#declare aleatoreo=seed(semilla);



//Cámara
//Me permite colocar una cámara y aputarla a una localización específica.
camera{
    //Dónde se encuentra la cámara con coordenadas <x,y,z>
    location <1,1,-17>
    //A donde apunta con coordenadas <x,y,z>
    look_at <10,10,10>
    }

//Fuente de luz
  light_source {
    <2, 10, -3>
    color White
    area_light <5, 0, 0>, <0, 0, 5>, 5, 5
    adaptive 1
    jitter
  }


//Declarando la variable a utilizar en while
#declare  numero=0;
#while(numero<numero_esferas) 
//Esfera
sphere{
    //Localización y radio
    <3.1416*(numero),3.1416*(numero),(numero)>, 2*rand(aleatoreo)
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{
	    //Color en RGB y transparencia del color
            color rgbt<rand(aleatoreo),rand(aleatoreo),rand(aleatoreo),0.2>
        }
	//El acabado final y representa una propiedad de la reflexión de la luz
        finish{
            phong 1         
        }   
    }
}

//Recuerde cambiar la variable que sirve de control.
#declare numero=numero+1;
#end

//Plano 
  plane {
    y, -1
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }

//Plano 
  plane {
    x, -2
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }
  
 //Plano 
  plane {
    z, 100
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }   