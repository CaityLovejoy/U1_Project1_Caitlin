boolean isAvailable = true;
String inventory[];
int INVERTORY_SIZE = 6;
float TEXT_OFFSET = 50;
int sceneNum = 1;
PImage sceneImage;
PImage sceneImage1;
PImage sceneImage2;
PImage sceneImage3;
PImage sceneImage4;

void setup()
{
  fullScreen();
  inventory = new String[INVERTORY_SIZE];
  sceneImage = loadImage("hill.jpg");
  sceneImage.resize(width, height);
  sceneImage1 = loadImage("welcome.jpg");
  sceneImage1.resize(width,height);
  sceneImage2 = loadImage("room.jpg");
  sceneImage2.resize(width,height);
  sceneImage3 = loadImage("black.jpg");
  sceneImage3.resize(width,height);
  sceneImage4 = loadImage("images.jpg");
  sceneImage4.resize(width,height);
}

void draw()
{
  background(0);
  textSize(24);
  if (sceneNum == 1)
  {
    Outside();
  }
  if ( sceneNum == 2)
  {
    EastEntrance();
  }
  if ( sceneNum == 5)
  {
    CobwebBurningCheck();
  }
  if ( sceneNum == 6)
  {
    infoGatheredCBC();
  }
  if (sceneNum == 7)
  {
    noInfoCBC();
  }
  if (sceneNum == 3)
  {
    WestEntrance();
  }
  if (sceneNum == 4)
  {
    NorthEntrancePt1();
  }
  if (sceneNum == 8)
  {
    Death1();
  }
  if (sceneNum == 10)
  {
    Partition();
  }
  if (sceneNum == 13)
  {
    roomTrap();
  }
  if (sceneNum == 11)
  {
    escape();
  }
  if (sceneNum == 12)
  {
    Death2();
  }
  if (sceneNum == 8)
  {
    Death1();
  }
  if (sceneNum == 15)
  {
    northernEntrancePt2();
  }
  if (sceneNum == 16)
  {
    northernWallPt1();
  }
  if (sceneNum == 17)
  {
    northernHall();
  }
  if (sceneNum == 18)
  {
    northernWallPt2();
  }
}

void Outside()
{
  image(sceneImage, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("Outside: You are standing on a hill facing north, there is a collection of black boulders that form the eyes, \n"
    + "nose and jagged teeth of a grinning human skull when observed from above. There are 3 buried entrances to the tomb. \n", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n\n 1: east entrance.     2: west entrance.     3: north entrance.", 40, height - height/6 + TEXT_OFFSET);
  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 2;
      isAvailable = false;
    }
    if (key == '2')
    {
      sceneNum = 3;
      isAvailable = false;
    }
    if (key == '3')
    {
      sceneNum = 4;
      isAvailable = false;
    }
  }
}

void EastEntrance()
{
  // sceneImage = loadImage("");
  image(sceneImage2, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("East Entrance: The entrance to the tomb is a short, roughly carved passageway, completely filled with cobwebs. \n"
    + "Tiny spiders flee from the light and motion caused by the unearthing of the tunnel. \n"
    + "You cannot see much more than afew feet into the room; the cobwebs are too thick", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n\n\n 1: return to the surface.     2: burn the cobwebs away with your torch.     3: walk forward.", 40, height - height/6 + TEXT_OFFSET );


  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 5;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '3')
    {
      sceneNum = 8;
      isAvailable = false;
    }
  }
}

void CobwebBurningCheck()
{
  int randomSceneNumber = (int)random(6, 8);

  if (randomSceneNumber == 6)
  {
    sceneNum = 6;
  }
  if (randomSceneNumber == 7)
  {
    sceneNum = 7;
  }
}

void infoGatheredCBC()
{
  image(sceneImage2, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("East Entrance: you see that the ceiling is cobbled together, cracked and unstable. \n"
    + "It may be dangerous to continue foward this way", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n\n 1: return to the surface.     2: Journey onward anyway.", 40, height - height/6 + TEXT_OFFSET);

  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 8;
      isAvailable = false;
    }
  }
}

void WestEntrance()
{
  image(sceneImage2, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("West Entrance: The entrance to the tomb is a long, harshly carved passageway. \n" 
    + "The ceiling, floor, and walls are roughly hewn. A pair of doors at the end of the hallway arebuilt of heavy oak \n"
    + "and iron bars, with pull rings to open them. It looks like it would be treacherous to move at more than a snail's pace across the badly excavated floor.", 40, height - height/6 + TEXT_OFFSET); 
  fill(255, 0, 0);
  text("\n\n\n 1: return to the surface     2: walk forward     3: run forward", 40, height - height/6 + TEXT_OFFSET);

  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }

  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 10;
      isAvailable = false;
    }
  }
}

void NorthEntrancePt1()
{
  image(sceneImage1, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("North Entrance: This long corridor seems untouched by the passing of the ages.\n" 
    + "Decadent frescoes are painted upon the plaster-covered walls, which is in some places chipped to reveal underlying masonry. \n"
    + "A winding path of red tiles meanders down the corridor, leading to a great green devil face, and a magical portal. \n" 
    + "A grotesque winged statue with four arms is perched on the green devil face's horns, staring blankly forward.     Press 1 to continue", 40, height - height/6 + TEXT_OFFSET);

if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 15;
      isAvailable = false;
    }
  }
}

void noInfoCBC()
{
  image(sceneImage2, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text(" East Entrance: after clearing the cobwebs you still can't see the ceiling well enough to gather information", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n 1: return to the surface.     2: walk forward.", 40, height - height/6 + TEXT_OFFSET);
  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 8;
      isAvailable = false;
    }
  }
}

void Death1()
{
  image(sceneImage3, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("The ceiling caved in while you where halfway down the corrider \n"
    + "you were crushed to death and your body was destroyed. Game over", 40, height - height/6 + TEXT_OFFSET);
}

/*void  NoEEoutside()
 {
 image(sceneImage, 0, 0);
 noStroke();
 fill(0, 0, 0);
 rect(0, height - height/6, width, height/6);
 stroke(255);
 fill(255);
 text("Outside: You are standing on a hill facing north, there is a collection of black boulders that form the eyes, \n"
 + "nose and jagged teeth of a grinning human skull when observed from above. There are 3 buried entrances to the tomb. \n", 40, height - height/6 + TEXT_OFFSET);
 fill(255, 0, 0);
 text("\n\n 1: west entrance.     2: north entrance.", 40, height - height/6 + TEXT_OFFSET);
 if (keyPressed && isAvailable)
 {
 }
 if (key == '1')
 {
 sceneNum = 3;
 isAvailable = false;
 }
 if (key == '2')
 {
 sceneNum = 4;
 isAvailable = false;
 }
 }
 */

void Partition()
{
  image(sceneImage2, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("As you walk forward you notice a large impassable and indestructable stone partion slide infront of the door", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n 1: Return to surface     2: Stay where you are     3: Continue onwards", 40, height - height/6 + TEXT_OFFSET);

  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 13;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '3')
    {
      sceneNum = 13;
      isAvailable = false;
    }
  }
}

void roomTrap()
{
  image(sceneImage2, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("The room rumbles loudly, shaking as though in the midst of a minor earthquake.", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n 1: Try and walk away     2: Try and run to the other side of the room", 40, height - height/6 + TEXT_OFFSET);

  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 14;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 15;
      isAvailable = false;
    }
  }
}


void LeavingCheck()
{
  int randomSceneNumber = (int)random(11, 13);

  if (randomSceneNumber == 11)
  {
    sceneNum = 11;
  }
  if (randomSceneNumber == 12)
  {
    sceneNum = 12;
  }
}

void escape()
{
  image(sceneImage, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("You make it outside just a the tunnel seals itself \n"
    + "you sustained mild injuries, it is impossible to enter the tunnel again", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n\n 1: East entrance     2: North entrance", 40, height - height/6 + TEXT_OFFSET);

  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 2;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 4;
      isAvailable = false;
    }
  }
}

void Death2()
{
  image(sceneImage3, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("you don't make it to safety, you are sealed within the tomb forever and you die of starvation \n"
  + "Game over", 40, height - height/6 + TEXT_OFFSET);
}

void northernEntrancePt2()
{
  image(sceneImage1, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255, 0, 0);
  text("1:Return to surface     2:Back to text     3:Inspect the walls     4:Walk forward", 40, height - height/6 + TEXT_OFFSET);
  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 4;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '3')
    {
      sceneNum = 16;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '4')
    {
      sceneNum = 17;
      isAvailable = false;
    }
  }
}

void northernWallPt1()
{
  image(sceneImage4, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("North Entrance Walls: The images depict fields with cattle grazing, and low woodlands with several wolves in the background, common race slaves toiling with various tasks, \n"
  + "mixed in with zoomorphic humanoids. Chairs, windows, boxes, bales, doors, chests, birds, bats, spiders, and all manner of things appear on the walls. \n"
  + "Some frescoes are more focused and show rooms of some building—a library filled with many books and scrolls, a chamber with a horrid creature in \n" 
  + "a cage used to torture prisoners, and a magical workshop.     Press 1 to continue", 40, height - height/6 + TEXT_OFFSET);
  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 18;
      isAvailable = false;
    }
  }
}

void northernHall()
{
  image(sceneImage1, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  
}

void northernWallPt2()
{
  image(sceneImage4, 0, 0);
  noStroke();
  fill(0, 0, 0);
  rect(0, height - height/6, width, height/6);
  stroke(255);
  fill(255);
  text("North Entrance Walls: Two jackal-headed human figures in this latter painting are portrayed as if holding a bronze chest— except that the chest is real, and protrudes into the corridor. \n" 
  + "The chest is hinged on the bottom so as to allow the lid to swing down when a stud is pressed.", 40, height - height/6 + TEXT_OFFSET);
  fill(255, 0, 0);
  text("\n\n 1:Return to surface     2:Explore the hall", 40, height - height/6 + TEXT_OFFSET);
  if (keyPressed && isAvailable)
  {
    if (key == '1')
    {
      sceneNum = 1;
      isAvailable = false;
    }
  }
  if (keyPressed && isAvailable)
  {
    if (key == '2')
    {
      sceneNum = 19;
      isAvailable = false;
    }
  }

}

void keyReleased()
{
  isAvailable = true;
}