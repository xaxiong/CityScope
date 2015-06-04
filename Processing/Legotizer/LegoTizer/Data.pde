// All static and psuedo-static parameters are initialized and loaded in this tab

// maxPieces: Maximum Number of Building structure pieces in one dimension, U or V
int maxPieces = 100;
// maxLU_W: Maximum Width of a Building structure piece, in nodes/Lego Units
int maxLU_W = 4;
// maxLU_H: Maximum Height of a Building structure piece, in nodes/Lego Units
int maxLU_H = 31; //30 story building + ground plane

// Arrays that holds ID information of rectilinear tile arrangement.
int codeArray[][][] = new int[maxPieces][maxPieces][2]; 
int previousArray[][][] = new int[maxPieces][maxPieces][2];
boolean changeDetected = false;

//Simulation Stats imported from CitySim
String heatMapName;
Table summary;

// Default Piece dimensions
int pieceRotation = 1;
int pieceW_LU = 4;
int pieceH_LU = 3;
// Note: in 4x4piece mode, pieceH_LU Mainly controls the hieght of the default tile created when no piece detected. 
// Keep 3 to keep at same level at 4x4 piece type and static structures
// Consider changing to 1 if useing 1x1 piece mode and using Lego plates

// Default Static Unit Dimensions
int staticH_LU = 3;
int staticW_LU = 1;

float heatMap[][] = new float[maxPieces][maxPieces];
int heatMapActive[][] = new int[maxPieces][maxPieces];

// Default Dimensions of Board in Cell Units (before any data is recieved)
int UMax = 1;
int VMax = 1;

// Board Dimensions (in cm)
float boardLength, boardWidth;

// Dimensions of Static Model
int staticU, staticV;

// Assumes Largest grid you'll ever need is 100x100.
// The first two dimensions (u, v) describe where the object is on the uxv chessboard
// int[u][v][0] a number (0 - 15) describing the object ID (There are 16 possible ID types)
// int[u][v][1] a number (0, 1, 2, or 3) describing the rotation of the object (90 degree intervals)

int NPieces; //Amount of Uniquely ID'd pieces being read into system.
int dim, LU_dim;
float model_W;
float boxW, boxH;
float gridGap, gridW, gridH, baseH;  // Describes dimensions of individual grid cell
float LU_W, LU_H;
int flip, random;

// Riyadh Structures for Import (4x4 Piece Type)
Table P1, R1, R2, R3, C1, C2, C3, ST1, ST2, ST3, M1, M2, M3, M4, M5, M6;

// Kendall Structures for Import (4x4 extruded Piece Type)
Table kendallStructures;

// Flinders Structures for Import (1x1 colored Lego pieces)
Table flindersStructures;

// Standard Structures for visualization
Table structures1x1, siteInfo, scaleInfo, staticStructures;
float scaler, lat, lon, geoRot;
ArrayList<Table> structures4x4;
PImage satellite, satellite_nosite, satelliteLG;

int testCodes = 2;

//Static Model Colors
int riverColor  = 0xCC1d2757; // dark blue
int parkColor   = 0xCCa2d938; // green
int roadColor   = 0xCC333333; // gray
//int openColor   = 0xCC3a4d14; // green
int openColor   = 0xCC7e7f3e; // green
int bldgColor   = 0xCCe5c46b; // beige

int lightGray   = 0xCC999999; // light gray
int mediumGray  = 0xCC666666; // medium gray

// Dynamic Model Colors
int retailColor       = 0xCCff00ff; // purple
int officeColor       = 0xCCFF0000; // red
int residentialColor  = 0xCCFFFF00; // yellow
int academicColor     = 0xCC0000ff; // blue
int offColor          = 0xFF333333; // dark gray

JSONObject metaData;

void initializeGrid() {

  // Raw Measurements used to derive important "Lego Unit" dimensions.
  // These happen to be the dimensions of our Large Lego Table, "CityScope Mark IV"
  // Display Units are centimeters...
  loadMeasures();
  
  // Dimensions of physical Tiles to be drawn (cm)
  calcDimensions();
  
  // Site Info:
  // Two dimensional matrix that describes static characteristics of each tile being scanned.
  loadSite();
  
  // Static Forms: 
  // This matrix describes the existing, static context.  
  loadStaticStructures();
  
  setupPreviousArray();
  
  // Sets default building values before Colortizer Inputs received
  setupCodeArray(testCodes);
  
  // Sets up JSON object for exporting key parameters to JSON
  metaData = new JSONObject();
  
}

void loadMeasures() {
  LU_dim = 192;                        // number of Lego Units used in average
  dim = 44;                            // number of laser cut grid squares spread out over 192 Lego Units
  model_W = 160.973;                   // width of 192 LU in cm
  LU_W = model_W/LU_dim;               //known dimention of 1 "Lego Unit" width in cm
  LU_H = 0.32115;                      //known dimention of 1 "Lego Unit" height in cm
  gridGap = (model_W - dim*4*LU_W)/dim;  // width of plexiglas grid spacer, derived from empirical measurement (above)
  gridH = 0.1016;                      // known thickness of plexiglas
  baseH = 0.1016;                      // known thickness of grey Lego baseplate
}

void calcDimensions() {
  boxW = LU_W*pieceW_LU;                 // NxN Lego Unit Tile; Derived from known dimentions of 1 "Lego Unit" in cm and number of Lego Units in each piece
  boxH = LU_H;                         // Derived from known dimentions of 1 "Lego Unit" in cm
  gridW = boxW + gridGap;              // Grid width, including plastic spacer
  flip = 1;
  
  // Board Dimensions
  updateBoard();
}

void updateBoard() {
  // Board Dimensions
  boardLength = UMax*(dynamicSpacer*gridGap+boxW);
  boardWidth  = VMax*(dynamicSpacer*gridGap+boxW);
}

void loadSite() {
  // Site Info:
  // Two dimensional matrix that describes static characteristics of each tile being scanned.
  // Because pattern scanning codes return complete rectangular grids of information, Site Info matrices 
  // help eliminate some tiles from visualization and/or calculation.  This is useful if tiles in your grid 
  // are understood not to change, are covered by a static model, or you wish to apply different codes 
  // associated with variable zoning, for instance.
  //
  // Format: Number of rows and columns may vary.  
  // Just make sure it's the same size as your grid table. (i.e. 16x16) 
  //
  // 0  0  0  ...  0
  // 0  1  1  ...  0
  // 0  1  1  ...  0
  // .  .  .  ...  .
  // 0  0  0  ...  0
  //
  // Legend:
  //
  // 0 = off: tile is off (static building, undevelopable land, etc)
  // 1 = on: tile is "on"
  //
  // Advanced:
  // 2 = off: main road
  // 4 = off: secondary street
  // 8 = off: existing building
  
  scaleInfo = loadTable(legotizer_data + demoPrefix + demos[vizMode] + "scaleInfo.tsv", "header");
  scaler = scaleInfo.getFloat(0, "scaler");
  lat = scaleInfo.getFloat(0, "lat");
  lon = scaleInfo.getFloat(0, "lon");
  geoRot = scaleInfo.getFloat(0, "rot");
  
  
  siteInfo = loadTable(legotizer_data + demoPrefix + demos[vizMode] + "siteinfo.tsv");
  satellite_nosite = loadImage(legotizer_data + demoPrefix + demos[vizMode] + "satellite_nosite.png");
  satellite = loadImage(legotizer_data + demoPrefix + demos[vizMode] + "satellite.jpg");
  if (vizMode == 1) { //Riyadh Viz Mode larger satellite
    satelliteLG = loadImage(legotizer_data + demoPrefix + demos[vizMode] + "satelliteLG.jpg");
  } 
  
}

void loadStaticStructures() {
  // Static Forms: 
  // This matrix describes the existing, static context.  
  // Each cell represents 1 Lego unit area and is numbered represent one of the following:
  //
  //Lengend:
  //
  // 1+ = height of building (in LU)
  // 0 = Ground: Open
  // -1 = Ground: Street
  // -2 = Ground: Park
  // -3 = Ground Water
  //
  // -10 = No Site
  
  staticStructures = loadTable(legotizer_data + demoPrefix + demos[vizMode] + "staticStructures.tsv");
  
  staticU = staticStructures.getColumnCount();
  staticV = staticStructures.getRowCount();
}

void setupPreviousArray() {
  // Sets grid to have "no object" (-1) with no rotation (0)
  for (int i=0; i<previousArray.length; i++) {
    for (int j=0; j<previousArray[0].length; j++) {
      previousArray[i][j][0] = -1;
      previousArray[i][j][1] = 0;
    }
  }
}

void setupCodeArray(int code) {

  if (code == 2 ) {
    
    // Sets all grids to have "no object" (-1) with no rotation (0)
    for (int i=0; i<codeArray.length; i++) {
      for (int j=0; j<codeArray[0].length; j++) {
        codeArray[i][j][0] = -1;
        codeArray[i][j][1] = 0;
      }
    }
  } else if (code == 1 ) {
    
    // Sets grids to be alternating one of each N piece types (0-N) with no rotation (0)
    int testID = 0; // Sets first grid cell to ID = 0
    for (int i=0; i<codeArray.length; i++) {
      for (int j=0; j<codeArray[0].length; j++) {
        codeArray[i][j][0] = i  % NPieces;
        codeArray[i][j][1] = 0;
        testID++;
      }
    }
  } else if (code == 0 ) {
    
    // Sets grids to be random piece types (0-N) with random rotation (0-3)
    int testID = 0; // Sets first grid cell to ID = 0
    for (int i=0; i<codeArray.length; i++) {
      for (int j=0; j<codeArray[0].length; j++) {
        codeArray[i][j][0] = int(random(-1.99, NPieces));
        codeArray[i][j][1] = int(random(0, 4));
        testID++;
      }
    }
  }
  
}

void changeTestCodes() {
  if (testCodes < 2) {
    testCodes ++;
  } else {
    testCodes = 0;
  }
  setupCodeArray(testCodes);
}

void initializePieces() {
  init1x1Structures();
  init4x4Structures();
}

void init1x1Structures() {
  // tsv file that describes structures that are a uniform extrusion 
  // of a Lego Unit piece tile of NxN.  Used when tiles have no detail other 
  // than extrusion (i.e. kendall square Mark IV, Flinders)
  // 
  // Format: Each row identifies a unique tile.  For each row, the following 
  // columns identify the characteristics of a tile:
  //
  //  ID   story  road   open  residential  office  retail  academic
  //  13   15     0      0     13           0       3       0
  //
  // Legend:
  //
  // ID: integer 0-15
  // story: number of "LU" stories total
  // road: 0 if not road, 1 id road
  // open: 0 if not open space, 1 if open space
  // residential, office, retail, academic: number of "LU" stories for each use type.  
  // if multiple columns have values, building becomes mixed use. Check that "stories" 
  // column correspons to total
  
  kendallStructures = loadTable(legotizer_data + demoPrefix + demos[0] + "1x1structures.tsv", "header");
  flindersStructures = loadTable(legotizer_data  + demoPrefix + demos[2] + "1x1structures.tsv", "header");
  
  if (vizMode == 0 ) {
    setKendallPieces();
  } else if (vizMode == 3 ) {
    setFlindersPieces();
  }
}

void init4x4Structures() {
  
  structures4x4 = new ArrayList<Table>();
  
  // Voxel-based tsv files that describe a structure consisting of
  // non-uniform extrusions of a 4x4 Lego Unit piece tile.  
  // Used when each of 16 1x1 Lego Pixel has its own unique form and/or use 
  //
  // Format: Each structure's tsv file is formatted as a series of 4x4 
  // matrices, stacked horizontally.  The first 4x4 matrix always represents 
  // the ground plane, while each that follows represent oneadditional 
  // "layer" of above-ground built environment.
  //
  // Example: The following matrix represents a ground plane half-covered by street use, and a 1-story mixed-use building with a tile of park
  //
  //   1  1  0  0  -1  -1  3  3 
  //   1  1  0  0  -1  -1  3  3 
  //   1  1  0  0  -1  -1  4  4 
  //   1  1  0  2  -1  -1  4  -1 
  //
  // Legend:
  //
  // 0 = Ground: Open
  // 1 = Ground: Street
  // 2 = Ground: Park
  // 3 = Building: Live
  // 4 = Building: Work
  // -1 = Open air (allows voids)
  // -2 = Water
  
  // The following Typologies were designed for use in UMI by BT Lab at MIT, Feb 2015
  // Translateded into 4x4 Schema by Ira Winder, Feb 2015
  ST1 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/ST1.tsv");  // 0, ST1
  R1 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/R1.tsv");    // 1, R1
  C2 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/C2.tsv");    // 2, C2
  ST2 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/ST2.tsv");  // 3, ST2
  M4 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/M4.tsv");    // 4, M4
  M2 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/M2.tsv");    // 5, M2
  R2 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/R2.tsv");    // 6, R2
  M6 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/M6.tsv");    // 7, M6
  P1 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/P1.tsv");    // 8, P1
  C3 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/C3.tsv");    // 9, C3
  C1 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/C1.tsv");    // 10, C1
  ST3 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/ST3.tsv");  // 11, ST3
  M3 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/M3.tsv");    // 12, M3
  M1 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/M1.tsv");    // 13, M1
  R3 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/R3.tsv");    // 14, R3
  M5 = loadTable(legotizer_data + demoPrefix + demos[1] + "4x4structures/M5.tsv");    // 15, M5
  
  if (vizMode == 1) {
    setRiyadhPieces();
  }
  
}

void setRiyadhPieces() {
  
  structures4x4.clear();
  structures4x4.add(ST1);
  structures4x4.add(R1);
  structures4x4.add(C2);
  structures4x4.add(ST2);
  structures4x4.add(M4);
  structures4x4.add(M2);
  structures4x4.add(R2);
  structures4x4.add(M6);
  structures4x4.add(P1);
  structures4x4.add(C3);
  structures4x4.add(C1);
  structures4x4.add(ST3);
  structures4x4.add(M3);
  structures4x4.add(M1);
  structures4x4.add(R3);
  structures4x4.add(M5);
  
  NPieces = structures4x4.size();
}

void setKendallPieces() {
  structures1x1 = kendallStructures;
  NPieces = structures1x1.getRowCount();
}

void setFlindersPieces() {
  structures1x1 = flindersStructures;
  NPieces = structures1x1.getRowCount();
}

void rotatePieces() {
  if (pieceRotation < 3) {
    pieceRotation ++;
  } else {
    pieceRotation = 0;
  }
}

void saveMetaJSON(String filename) {
  metaData.setFloat("scaler", scaler);
  metaData.setFloat("latitude", lat);
  metaData.setFloat("longitude", lon);
  metaData.setFloat("rotation", geoRot);
  metaData.setFloat("pieceH_LU", pieceH_LU);
  metaData.setFloat("pieceW_LU", pieceW_LU);
  metaData.setFloat("staticH_LU", staticH_LU);
  metaData.setFloat("staticW_LU", staticW_LU);
  metaData.setFloat("staticSpacer", staticSpacer);
  metaData.setFloat("dynamicSpacer", dynamicSpacer);
  metaData.setFloat("spacerW", scaler/LU_W*gridGap);
  if (structureMode == 0) {
    metaData.setFloat("dynNodeW", scaler*pieceW_LU);
    metaData.setFloat("avgDynNodeW", scaler*(pieceW_LU+dynamicSpacer*gridGap/LU_W));
    metaData.setFloat("nodesU", UMax);
    metaData.setFloat("nodesV", VMax);
  } else if (structureMode == 1) {
    metaData.setFloat("dynNodeW", scaler);
    metaData.setFloat("avgDynNodeW", scaler*(4+dynamicSpacer*gridGap/LU_W)/4);
    metaData.setFloat("nodesU", UMax*pieceW_LU);
    metaData.setFloat("nodesV", VMax*pieceW_LU);
  }
  metaData.setFloat("dynNodeH", scaler*LU_H/LU_W);
  metaData.setFloat("maxPieces", maxPieces);
  metaData.setFloat("maxLU_W", maxLU_W);
  metaData.setFloat("maxLU_H", maxLU_H);
  
  saveJSONObject(metaData, legotizer_data + demoPrefix + demos[vizMode] + filename);
  println("Metadata saved to " + legotizer_data + demoPrefix + demos[vizMode] + filename);
}

void loadSummary() {
  
  summary = loadTable(legotizer_data + demoPrefix + demos[vizMode] + "summary.tsv");
  
  live = summary.getInt(1,3);
  work = summary.getInt(1,4);
  
  summary.removeColumn(4);
  summary.removeColumn(3);
  
  webScores = new ArrayList<Float>();
  webNames = new ArrayList<String>();
  avgScore = 0;
  
  for (int i=0; i<summary.getColumnCount(); i++) {
    webNames.add(summary.getString(0,i));
    webScores.add(summary.getFloat(1,i));
    avgScore += webScores.get(i);
  }
  
  avgScore /= webScores.size();
}

void initializeHeatMap() {
  for (int i=0; i<heatMap.length; i++) {
    for (int j=0; j<heatMap[0].length; j++) {
      heatMap[i][j] = .5;
      heatMapActive[i][j] = 1;
    }
  }
}

void heatMapActive(boolean isActive) {
  for (int i=0; i<heatMapActive.length; i++) {
    for (int j=0; j<heatMapActive[0].length; j++) {
      if (isActive) {
        heatMapActive[i][j] = 1;
      } else {
        heatMapActive[i][j] = 0;
      }
    }
  }
}

void togglePieceW() {
  if (pieceW_LU == 4) {
    pieceW_LU = 1;
  } else if (pieceW_LU == 1) {
    pieceW_LU = 4;
  }
  println("pieceW_LU = " + pieceW_LU);
  calcDimensions();
}

void togglePieceH() {
  if (pieceH_LU == 3) {
    pieceH_LU = 1;
  } else if (pieceH_LU == 1) {
    pieceH_LU = 3;
  }
  println("pieceH_LU = " + pieceH_LU);
}

void toggleStaticW() {
  if (staticW_LU == 4) {
    staticW_LU = 1;
  } else if (staticW_LU == 1) {
    staticW_LU = 4;
  }
  println("staticW_LU = " + staticW_LU);
  calcDimensions();
}

void toggleStaticH() {
  if (staticH_LU == 3) {
    staticH_LU = 1;
  } else if (staticH_LU == 1) {
    staticH_LU = 3;
  }
  println("staticH_LU = " + staticH_LU);
}

void toggleStructureMode() {
  if (structureMode == 0) {
    structureMode = 1;
  } else {
    structureMode = 0;
  }
}
