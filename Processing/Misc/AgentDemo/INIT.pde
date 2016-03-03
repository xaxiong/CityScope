// Graphics object in memory that holds visualization
PGraphics tableCanvas;


PImage demoMap;

int dataMode = 1;
// dataMode = 1 for random network
// dataMode = 0 for empty network and Pathfinder Test OD

void initCanvas() {
  
  println("Initializing Canvas Objects ... ");
  
  // Largest Canvas that holds unchopped parent graphic.
  tableCanvas = createGraphics(canvasWidth, canvasHeight, P3D);
  
  // Adjusts Colors and Transparency depending on whether visualization is on screen or projected
  setScheme();
  
  println("Canvas and Projection Mapping complete.");

}

void initContent(PGraphics p) {
  
  switch(dataMode) {
    case 0: // Pathfinder Demo
      showGrid = true;
      finderMode = 0;
      showEdges = false;
      showSource = false;
      showPaths = false;
      showTraces = false;
      showInfo = false;
      break;
    case 1: // Random Demo
      showGrid = true;
      finderMode = 0;
      showEdges = false;
      showSource = false;
      showPaths = true;
      break;
  }
  
  initObstacles(p);
  initPathfinder(p, p.width/100);
  initAgents(p);
  //initButtons(p);
  
  demoMap = loadImage("data/demoMap.png");
  
  //hurrySwarms(1000);
  println("Initialization Complete.");
}





// ---------------------Initialize Agent-based Objects---
//call multiple swarmHordes to manipulate into different sub origins 
Horde swarmHorde;
Horde swarmHorde2;
Horde swarmHorde3;
Horde swarmHorde4;
Horde swarmHorde5;
Horde swarmHorde6;
Horde swarmHorde7;
Horde swarmHorde8;
Horde swarmHorde9;

PVector[] origin, origin2, origin3, origin4, origin5, origin6, origin7, origin8, origin9, destination, nodes;
float[] weight;

int textSize = 8;

boolean enablePathfinding = true;

HeatMap traces;

PGraphics sources_Viz, edges_Viz;

void initAgents(PGraphics p) {
  
  println("Initializing Agent Objects ... ");
  
  //lots of small hordes instead of one big one 
  
  swarmHorde = new Horde(int(random(200, 400)));
  swarmHorde2 = new Horde(int(random(200, 400)));
  swarmHorde3 = new Horde(int(random(200, 400)));
  swarmHorde4 = new Horde(int(random(200, 400)));
  swarmHorde5 = new Horde(int(random(200, 400)));
  swarmHorde6 = new Horde(int(random(200, 400)));
  swarmHorde7 = new Horde(int(random(200, 400)));
  swarmHorde8 = new Horde(int(random(200, 400)));
  swarmHorde9 = new Horde(int(random(200, 400)));
  sources_Viz = createGraphics(p.width, p.height);
  edges_Viz = createGraphics(p.width, p.height);
  
  switch(dataMode) {
    case 0:
      testNetwork_Random(p, 0);
      break;
    case 1:
      testNetwork_Random(p, 16);
      break;
    case 2: 
      testNetwork_Random(p, 16);
      break;
  }
  
  swarmPaths(p, enablePathfinding);
  sources_Viz(p);
  edges_Viz(p);
  traces = new HeatMap(p.width/5, p.height/5, p.width, p.height);
  
  println("Agents initialized.");
}

void swarmPaths(PGraphics p, boolean enable) {
  // Applies pathfinding network to swarms
  swarmHorde.solvePaths(pFinder, enable);
  swarmHorde2.solvePaths(pFinder, enable);
  swarmHorde3.solvePaths(pFinder, enable);
  swarmHorde4.solvePaths(pFinder, enable);
  swarmHorde5.solvePaths(pFinder, enable);
  swarmHorde6.solvePaths(pFinder, enable);
  swarmHorde7.solvePaths(pFinder, enable);
  swarmHorde8.solvePaths(pFinder, enable);
  swarmHorde9.solvePaths(pFinder, enable);
  pFinderPaths_Viz(p, enable);
}

void sources_Viz(PGraphics p) {
  sources_Viz = createGraphics(p.width, p.height);
  sources_Viz.beginDraw();
  // Draws Sources and Sinks to canvas
  swarmHorde.displaySource(sources_Viz);
  swarmHorde2.displaySource(sources_Viz);
  swarmHorde3.displaySource(sources_Viz);
  swarmHorde4.displaySource(sources_Viz);
  swarmHorde5.displaySource(sources_Viz);
  swarmHorde6.displaySource(sources_Viz);
  swarmHorde7.displaySource(sources_Viz);
  swarmHorde8.displaySource(sources_Viz);
  swarmHorde9.displaySource(sources_Viz);
  sources_Viz.endDraw(); 
}

void edges_Viz(PGraphics p) {
  edges_Viz = createGraphics(p.width, p.height);
  edges_Viz.beginDraw();
  // Draws Sources and Sinks to canvas
  swarmHorde.displayEdges(edges_Viz);
  edges_Viz.endDraw(); 
}

void hurrySwarms(int frames) {
  //speed = 20;
  showSwarm = false;
  showEdges = false;
  showSource = false;
  showPaths = false;
  showTraces = false;
  for (int i=0; i<frames; i++) {
    swarmHorde.update();
    swarmHorde2.update();
    swarmHorde3.update();
    swarmHorde4.update();
    swarmHorde5.update();
    swarmHorde6.update();
    swarmHorde7.update();
    swarmHorde8.update();
    swarmHorde9.update();
  }
  showSwarm = true;
  //speed = 1.5;
}

// dataMode for random network
void testNetwork_Random(PGraphics p, int _numNodes) {
  
  int numNodes, numEdges, numSwarm;
  
  numNodes = _numNodes;
  numEdges = numNodes*(numNodes-1);
  numSwarm = numEdges;
  
  float[] seeds_x = new float[numNodes];
  float[] seeds_y = new float[numNodes];
  
  nodes = new PVector[numNodes];
  origin = new PVector[numSwarm];
  origin2 = new PVector[numSwarm];
  origin3 = new PVector[numSwarm];
  origin4 = new PVector[numSwarm];
  origin5 = new PVector[numSwarm];
  origin6 = new PVector[numSwarm];
  origin7 = new PVector[numSwarm];
  origin8 = new PVector[numSwarm];
  origin9 = new PVector[numSwarm];
  destination = new PVector[numSwarm];
  weight = new float[numSwarm];
  swarmHorde.clearHorde();
  swarmHorde2.clearHorde();
  swarmHorde3.clearHorde();
  swarmHorde4.clearHorde();
  swarmHorde5.clearHorde();
  swarmHorde6.clearHorde();
  swarmHorde7.clearHorde();
  swarmHorde8.clearHorde();
  swarmHorde9.clearHorde();

  
  for (int i=0; i<numNodes; i++) {
    nodes[i] = new PVector(random(10, p.width-10), random(10, p.height-10));
  }
  
    // Set seeds position, random
        seeds_x[0] = nodes[0].x;
        seeds_y[0] = nodes[0].y;

        seeds_x[1] = nodes[1].x;
        seeds_y[1] = nodes[1].y;

        seeds_x[2] = nodes[2].x;
        seeds_y[2] = nodes[2].y;

        seeds_x[3] = nodes[3].x;
        seeds_y[3] = nodes[3].y;

        seeds_x[4] = nodes[4].x;
        seeds_y[4] = nodes[4].y;

        seeds_x[5] = nodes[5].x;
        seeds_y[5] = nodes[5].y;
        
        seeds_x[6] = nodes[6].x;
        seeds_y[6] = nodes[6].y;
        
        seeds_x[7] = nodes[7].x;
        seeds_y[7] = nodes[7].y;
        
        seeds_x[8] = nodes[8].x;
        seeds_y[8] = nodes[8].y;
        
        seeds_x[9] = nodes[9].x;
        seeds_y[9] = nodes[9].y;
        
        seeds_x[10] = nodes[10].x;
        seeds_y[10] = nodes[10].y;
        
        seeds_x[11] = nodes[11].x;
        seeds_y[11] = nodes[11].y;
        
        seeds_x[12] = nodes[12].x;
        seeds_y[12] = nodes[12].y;
        
        seeds_x[13] = nodes[13].x;
        seeds_y[13] = nodes[13].y;
        
        seeds_x[14] = nodes[14].x;
        seeds_y[14] = nodes[14].y;
        
        seeds_x[15] = nodes[15].x;
        seeds_y[15] = nodes[15].y;
        

       float minDistance = 0;
       float minIndex = 0;
       color[] seed_colors = new color[16];
       
        seed_colors[0] = color(255, 0, 0); //red
        seed_colors[1] = color(0, 255, 0); //green
        seed_colors[2] = color(0, 0, 255); //cyan blue
        seed_colors[3] = color(255, 255, 0); //yellow 
        seed_colors[4] = color(255, 0, 255); //bright purple
        seed_colors[5] = color(0, 255, 255); //light bright blue
        seed_colors[6] = color(127, 0, 255); //medium purple
        seed_colors[7] = color(225, 128, 0); //orange
        seed_colors[8] = color(102, 255, 178); //seafoam
        seed_colors[9] = color(0, 128, 255); //medium blue
        seed_colors[10] = color(255, 0, 127); //medium pink
        seed_colors[11] = color(229, 204, 255); //lavendar
        seed_colors[12] = color(255, 153, 153); //peach
        seed_colors[13] = color(255, 213, 0); //yellow-orange
        seed_colors[14] = color(0, 204, 102); //medium green
        seed_colors[15] = color(128, 255, 0); //yellow green
       
     
       for(int px = 0; px < width; px++)
    {
      
         for(int py = 0; py < height; py++)
         {
           
             // Check distances to colors
             minDistance = ((px  - seeds_x[0]) * (px - seeds_x[0])) +  ((py  - seeds_y[0]) * (py  - seeds_y[0]));
             minIndex = 0;
 
             for (int nc = 1; nc < 16; nc++)
             {
                 float dist = ((px  - seeds_x[nc]) * (px - seeds_x[nc])) +  ((py  - seeds_y[nc]) * (py  - seeds_y[nc]));
                  
                 if (dist <= minDistance)
                 {
                     minDistance = dist;
                     minIndex = nc;
                }
            }
            stroke(seed_colors[int(minIndex)]);
            point(px, py);
           
        }
        
    }
    
    
  int a_1 = 0; 
  int b_1 = 0;   
  int a_2 = 0; 
  int b_2 = 0;  
  

    
  //origins done with a bit of voronoi geometry
  for (int i=0; i<numNodes; i++) {
    for (int j=0; j<numNodes-1; j++) {
      
      origin[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      //write voronoi math here to get the other origins to do the thing 
      for(int l = 0; l<10; l++){
      float x = random(width);
      float y = random(height);
      if( (((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[0]) * (x - seeds_x[0])) +  ((y  - seeds_y[0]) * (y  - seeds_y[0]))) && 
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[2]) * (x - seeds_x[2])) +  ((y  - seeds_y[2]) * (y  - seeds_y[2]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[3]) * (x - seeds_x[3])) +  ((y  - seeds_y[3]) * (y  - seeds_y[3]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[4]) * (x - seeds_x[4])) +  ((y  - seeds_y[4]) * (y  - seeds_y[4]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[5]) * (x - seeds_x[5])) +  ((y  - seeds_y[5]) * (y  - seeds_y[5]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[6]) * (x - seeds_x[6])) +  ((y  - seeds_y[6]) * (y  - seeds_y[6]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[1]) * (x - seeds_x[1])) +  ((y  - seeds_y[1]) * (y  - seeds_y[1]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[8]) * (x - seeds_x[8])) +  ((y  - seeds_y[8]) * (y  - seeds_y[8]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <=((x  - seeds_x[9]) * (x - seeds_x[9])) +  ((y  - seeds_y[9]) * (y  - seeds_y[9]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[10]) * (x - seeds_x[10])) +  ((y  - seeds_y[10]) * (y  - seeds_y[10]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[11]) * (x - seeds_x[11])) +  ((y  - seeds_y[11]) * (y  - seeds_y[11]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[12]) * (x - seeds_x[12])) +  ((y  - seeds_y[12]) * (y  - seeds_y[12]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[13]) * (x - seeds_x[13])) +  ((y  - seeds_y[13]) * (y  - seeds_y[13]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[14]) * (x - seeds_x[14])) +  ((y  - seeds_y[14]) * (y  - seeds_y[14]))
      &&
      ((x  - seeds_x[7]) * (x - seeds_x[7])) +  ((y  - seeds_y[7]) * (y  - seeds_y[7])) <= ((x  - seeds_x[15]) * (x - seeds_x[15])) +  ((y  - seeds_y[15]) * (y  - seeds_y[15])))
      {
      origin2[i*(numNodes-1)+j] = new PVector(x, y);
      }
      
      else{
        origin2[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      }
       
  }
      
      
     
      origin3[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      origin4[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      origin5[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      origin6[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      origin7[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      origin8[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      origin9[i*(numNodes-1)+j] = new PVector(nodes[i].x, nodes[i].y);
      
      destination[i*(numNodes-1)+j] = new PVector(nodes[(i+j+1)%(numNodes)].x, nodes[(i+j+1)%(numNodes)].y);  
   
      weight[i*(numNodes-1)+j] = random(0.1, 2.0);
      
      //println("swarm:" + (i*(numNodes-1)+j) + "; (" + i + ", " + (i+j+1)%(numNodes) + ")");
    }
  }
  
    // rate, life, origin, destination
  colorMode(HSB);
  
  for (int i=0; i<numSwarm; i++) {
    
    // delay, origin, destination, speed, color
    swarmHorde.addSwarm(weight[i], origin[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde2.addSwarm(weight[i], origin2[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde3.addSwarm(weight[i], origin3[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde4.addSwarm(weight[i], origin4[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde5.addSwarm(weight[i], origin5[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde6.addSwarm(weight[i], origin5[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde7.addSwarm(weight[i], origin5[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde8.addSwarm(weight[i], origin5[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    swarmHorde9.addSwarm(weight[i], origin5[i], destination[i], 1, color(255.0*i/numSwarm, 255, 255));
    
    // Makes sure that agents 'staying put' eventually die
    swarmHorde.getSwarm(i).temperStandingAgents();
    swarmHorde2.getSwarm(i).temperStandingAgents();
    swarmHorde3.getSwarm(i).temperStandingAgents();
    swarmHorde4.getSwarm(i).temperStandingAgents();
    swarmHorde5.getSwarm(i).temperStandingAgents();
    swarmHorde9.getSwarm(i).temperStandingAgents();
    swarmHorde6.getSwarm(i).temperStandingAgents();
    swarmHorde7.getSwarm(i).temperStandingAgents();
    swarmHorde8.getSwarm(i).temperStandingAgents();
   
  }
  colorMode(RGB);
  
  swarmHorde.popScaler(1.0);
}

//------------------Initialize Obstacles----

boolean showObstacles = false;
boolean editObstacles = false;
boolean testObstacles = true;

ObstacleCourse boundaries, grid;
PVector[] obPts;

void initObstacles(PGraphics p) {
  
  println("Initializing Obstacle Objects ...");
  
  // Gridded Obstacles for testing
  grid = new ObstacleCourse();
  testObstacles(p, testObstacles);
  
  // Obstacles for agents generates within Andorra le Vella
  boundaries = new ObstacleCourse();
  boundaries.loadCourse("data/course.tsv");
  
  println("Obstacles initialized.");
}

void testObstacles(PGraphics p, boolean place) {
  if (place) {
    setObstacleGrid(p, p.width/50, p.height/50);
  } else {
    setObstacleGrid(p, 0, 0);
  }
}

void setObstacleGrid(PGraphics p, int u, int v) {
  
  grid.clearCourse();
  
  float w = 0.75*float(p.width)/(u+1);
  float h = 0.75*float(p.height)/(v+1);
  
  obPts = new PVector[4];
  for (int i=0; i<obPts.length; i++) {
    obPts[i] = new PVector(0,0);
  }
  
  for (int i=0; i<u; i++) {
    for (int j=0; j<v; j++) {
      
      float x = float(p.width)*i/(u+1)+w/2.0;
      float y = float(p.height)*j/(v+1)+h/2.0;
      obPts[0].x = x;     obPts[0].y = y;
      obPts[1].x = x+w;   obPts[1].y = y;
      obPts[2].x = x+w;   obPts[2].y = y+h;
      obPts[3].x = x;     obPts[3].y = y+h;
      
      grid.addObstacle(new Obstacle(obPts));
    }
  }
}

//-------Initialize Buttons
/*void initButtons(PGraphics p){
  button = new Button(70, 70, "refresh");
}
*/

//------------- Initialize Pathfinding Objects

Pathfinder pFinder;
int finderMode = 2;
// 0 = Random Noise Test
// 1 = Grid Test
// 2 = Custom

// Pathfinder test and debugging Objects
Pathfinder finderRandom, finderGrid, finderCustom;
PVector A, B;
ArrayList<PVector> testPath, testVisited;

// PGraphic for holding pFinder Viz info so we don't have to re-write it every frame
PGraphics pFinderPaths, pFinderGrid;

void initPathfinder(PGraphics p, int res) {
  
  println("Initializing Pathfinder Objects ... ");
  
  // Initializes a Custom Pathfinding network Based off of user-drawn Obstacle Course
  initCustomFinder(p, res);
  
  // Initializes a Pathfinding network Based off of standard Grid-based Obstacle Course
  initGridFinder(p, res);
  
  // Initializes a Pathfinding network Based off of Random Noise
  initRandomFinder(p, res);
  
  // Initializes an origin-destination coordinate for testing
  initOD(p);
  
  // sets 'pFinder' to one of above network presets
  setFinder(p, finderMode);
  initPath(pFinder, A, B);
  
  // Ensures that a valid path is always initialized upon start, to an extent...
  forcePath(p);
  
  // Initializes a PGraphic of the paths found
  pFinderGrid_Viz(p);
  
  println("Pathfinders initialized.");
}

void initCustomFinder(PGraphics p, int res) {
  finderCustom = new Pathfinder(p.width, p.height, res, 0.0); // 4th float object is a number 0-1 that represents how much of the network you would like to randomly cull, 0 being none
  finderCustom.applyObstacleCourse(boundaries);
}

void initGridFinder(PGraphics p, int res) {
  finderGrid = new Pathfinder(p.width, p.height, res, 0.0); // 4th float object is a number 0-1 that represents how much of the network you would like to randomly cull, 0 being none
  finderGrid.applyObstacleCourse(grid);  
}

void initRandomFinder(PGraphics p, int res) {
  finderRandom = new Pathfinder(p.width, p.height, res, 0.5);
}

// Refresh Paths and visualization; Use for key commands and dynamic changes
void refreshFinder(PGraphics p) {
  setFinder(p, finderMode);
  initPath(pFinder, A, B);
  swarmPaths(p, enablePathfinding);
  pFinderGrid_Viz(p);
}

// Completely rebuilds a selected Pathfinder Network
void resetFinder(PGraphics p, int res, int _finderMode) {
  switch(_finderMode) {
    case 0:
      initRandomFinder(p, res);
      break;
    case 1:
      initGridFinder(p, res);
      break;
    case 2:
      initCustomFinder(p, res);
      break;
    case 3: 
      initGridFinder(p, res);
      break;
  }
  setFinder(p, _finderMode);
}

void setFinder(PGraphics p, int _finderMode) {
  switch(_finderMode) {
    case 0:
      pFinder = finderRandom;
      break;
    case 1:
      pFinder = finderGrid;
      break;
    case 2:
      pFinder = finderCustom;
      break;
    case 3: 
      pFinder = finderGrid;
      break;
  }
}

void pFinderPaths_Viz(PGraphics p, boolean enable) {
  
  // Write Path Results to PGraphics
  pFinderPaths = createGraphics(p.width, p.height);
  pFinderPaths.beginDraw();
  swarmHorde.solvePaths(pFinder, enable);
  swarmHorde2.solvePaths(pFinder, enable);
  swarmHorde3.solvePaths(pFinder, enable);
  swarmHorde4.solvePaths(pFinder, enable);
  swarmHorde5.solvePaths(pFinder, enable);
  swarmHorde6.solvePaths(pFinder, enable);
  swarmHorde7.solvePaths(pFinder, enable);
  swarmHorde8.solvePaths(pFinder, enable);
  swarmHorde9.solvePaths(pFinder, enable);
  swarmHorde.displayPaths(pFinderPaths);
  pFinderPaths.endDraw();
  
}

void pFinderGrid_Viz(PGraphics p) {
  
  // Write Network Results to PGraphics
  pFinderGrid = createGraphics(p.width, p.height);
  pFinderGrid.beginDraw();
  if (dataMode == 0) {
    drawTestFinder(pFinderGrid, pFinder, testPath, testVisited);
  } else {
    pFinder.display(pFinderGrid);
  }
  pFinderGrid.endDraw();
}

// Ensures that a valid path is always initialized upon start, to an extent...
void forcePath(PGraphics p) {
  int counter = 0;
  while (testPath.size() < 2) {
    println("Generating new origin-destination pair ...");
    initOD(p);
    initPath(pFinder, A, B);
    
    counter++;
    if (counter > 1000) {
      break;
    }
  }
}

void initPath(Pathfinder f, PVector A, PVector B) {
  testPath = f.findPath(A, B, enablePathfinding);
  testVisited = f.getVisited();
}

void initOD(PGraphics p) {
  A = new PVector(random(1.0)*p.width, random(1.0)*p.height);
  B = new PVector(random(1.0)*p.width, random(1.0)*p.height);
}
