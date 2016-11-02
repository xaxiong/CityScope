import deadpixel.keystone.*;

PImage special_agents, special_roads, things;

boolean notenoughdata;

/* GeoBits 
 
 GeoBits is a system for exploring and rendering GeoSpatial data a global scale in a variety of coordinate systems
 For more info, visit https://changingplaces.github.io/GeoBits/
 
 This code is the essence of under construction...it's a hot mess
 
 Author: Nina Lutz, nlutz@mit.edu`
 
 Supervisor: Ira Winder, jiw@mit.edu
 
 Write datege: 8/13/16 
 Last Updated: 11/2/16
 */
boolean agentstriggered, initagents, initialized, lines;
boolean bw = true;
MercatorMap mercatorMap;
BufferedReader reader;
String line;
int current;

RoadNetwork canvas, selection, handler;
ODPOIs places;
int posx, posy, zoom;

Table table, net;

void setup() {

  size(1366, 768, P3D);
  initCanvas();
  renderTableCanvas();
  initGraphics();
  draw_directions(direction);       
//  draw_popup(popup);
  draw_loading(loading);
  draw_notenough(notenough);
//  draw_agents(agents);
 map = new UnfoldingMap(this, new OpenStreetMap.OpenStreetMapProvider());
  MapUtils.createDefaultEventDispatcher(this, map);
  Location Boston = new Location(42.359676, -71.060636);
  smooth();
  
  map.zoomAndPanTo(Boston, 17);
  
    mouseX = width/2;
  mouseY = height/2;
//  // Initial Projection-Mapping Canvas
//  initializeProjection2D();

  initUDP();
  setupPieces();
  pulling = true;
  
}

void draw() {
  background(0);

  if (!pulling) {
    map.draw();
  }


  if (pull) {
    Selection.clear();
    Canvas.clear();
    PullMap(MapTiles(width, height, 0, 0).size(), width, height);
    println("PullMap() ran");
    PullOSM();
    places.PullPOIs();
    println("Pull POIs ran");
    if (Yasushi) {
      PullOSM();
      PullWidths();
    }
    selection.GenerateNetwork(MapTiles(width, height, 0, 0).size());
    println("Generate Network ran");
    canvas.GenerateNetwork(MapTiles(width, height, 0, 0).size());
//    draw_popup(popup);
    println("Generate Network ran");
//    places.generate_POIs();
//    println("Generate POIs ran");
    println("DONE: Data Acquired");
//     zoom = map.getZoomLevel();
//      handler = selection;
//      Handler = Selection;
//      c = #ff0000;
//      selection.drawRoads(Selection, c);
//      lines = !lines;
      pulling = false;
      pull = false;
      
  if(places.POIs.size() > 2){
      current = map.getZoomLevel();
      notenoughdata = false;
       handler = canvas;
      initialized = false;
      tableCanvas.clear();
      Handler = Canvas;
      BresenhamMaster.clear();
      for(int i = 0; i<handler.Roads.size(); i++){
        handler.Roads.get(i).bresenham();
      }
      test_Bresen();
       agentstriggered = !agentstriggered;
      handler = selection;
      Handler = Selection;
      c = #ff0000;
      selection.drawRoads(Selection, c);
      lines = true;
          }
   else{
     notenoughdata = true;
     }    
  }


  mercatorMap = new MercatorMap(1366, 768, CanvasBox().get(0).x, CanvasBox().get(1).x, CanvasBox().get(0).y, CanvasBox().get(1).y, 0);

  if (lines) {
    image(Handler, 0, 0);
  }

  if (map.getZoomLevel() != zoom) {
    if (lines) {
      Handler.clear();
      handler.drawRoads(Handler, c);
      image(Handler, 0, 0);
      zoom = map.getZoomLevel();
    }
  }

  if (!lines) {
    Handler.clear();
  }


  if (directions) {
    image(direction, 0, 0);
  }

//  if (map.getZoomLevel() >= 14) {
//    image(popup, 0, 0);
//  }


  if (select && !pulling) {
    draw_selection();
  }


  draw_info();
  
  if(notenoughdata){
     image(notenough, 0, 0); 
  }

  if (pulling) {
    image(loading, 0, 0);
    pull = true;
  }


  if (agentstriggered) {  
    if (initialized) {
      mainDraw();
    } else if (!initialized) {
      initContent(tableCanvas);
      initialized = true;
      initagents = false;
    } else {
      mainDraw();
      // Print Framerate of animation to console
      if (showFrameRate) {
        println(frameRate);
      }
    }
  }
  
    
  if(initialized && frameCount % 3 == 0){
  things = get(int(mercatorMap.getScreenLocation(selection.bounds.boxcorners().get(1)).x), int(mercatorMap.getScreenLocation(selection.bounds.boxcorners().get(1)).y), boxh, boxw+90);
  }

  
}

void mouseDragged() {
  if (lines) {
    initialized = false;
    agentstriggered = false;
    Handler.clear();
    handler.drawRoads(Handler, c);
    image(Handler, 0, 0);
    left = mercatorMap.getGeo(new PVector(0, 0)).x; 
  }
  if(notenoughdata){
    notenoughdata = false;
  }
}


void renderTableCanvas() {
  // most likely, you'll want a black background
  //  background(0);
  // Renders the tableCanvas as either a projection map or on-screen 
  image(tableCanvas, 0, 0, tableCanvas.width, tableCanvas.height);
// if(initialized){
//  println("making PGraphics");
//  special_roads = Selection.get(int(mercatorMap.getScreenLocation(selection.bounds.boxcorners().get(1)).x), int(mercatorMap.getScreenLocation(selection.bounds.boxcorners().get(1)).y), boxw+100, boxh+100);
//  special_agents = tableCanvas.get(int(mercatorMap.getScreenLocation(selection.bounds.boxcorners().get(1)).x), int(mercatorMap.getScreenLocation(selection.bounds.boxcorners().get(1)).y), boxw+100, boxh+100);
//  }
}  
void mainDraw() {
  // Draw Functions Located here should exclusively be drawn onto 'tableCanvas',
  // a PGraphics set up to hold all information that will eventually be 
  // projection-mapped onto a big giant table:
  drawTableCanvas(tableCanvas);

  // Renders the finished tableCanvas onto main canvas as a projection map or screen
  renderTableCanvas();
}
