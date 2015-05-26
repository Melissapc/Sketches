
// Copyright Wintriss Technical Schools 2013

import ddf.minim.*;       

Minim minim = new Minim(this);      

AudioPlayer song;  

void draw(){}
  



void keyPressed() {

  System.out.println("" + keyCode);

  

  if (keyCode == UP) {

    //playSound("attention.1.aiff");

  }


}



void playSound(String soundName) {

  AudioSample sound = minim.loadSample(soundName);

  sound.trigger();

}

  

void playSong(String songName) {

  song = minim.loadFile(songName, 512);

  song.play();

}



void stop()  

{

  try {

    song.close();

    minim.stop  ();

  } 

  catch(Exception e) {

  }

}




