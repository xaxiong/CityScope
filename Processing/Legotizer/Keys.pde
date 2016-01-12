void keyPressed() {
  switch(key) {
    case 'h': 
      toggleHelp();
      break;
    case 'p': 
      toggleStaticSpacer();
      break;
    case ';': 
      toggleDynamicSpacer();
      updateBoard();
      initializePlan();
      break;
    case '/': 
      togglePieceW();
      break;
    case '.': 
      togglePieceH();
      break;
    case '?': 
      toggleStaticW();
      break;
    case '>': 
      toggleStaticH();
      break;
    case 'q': 
      toggleStructureMode();
      updateAllNodes();
      break;
    case 'o': 
      changeBasemap();
      break;
    case 'O': 
      changeBasemapPlan();
      break;
    case ' ':
      toggleColorMode();
      break;
    case 'm': 
      changeDisplayMode();
      break;
    case 's': 
      toggleStaticDraw();
      break;
    case 'c': 
      changeTestCodes();
      updateAllNodes();
      break;
    case 'd': 
      toggleDynamicDraw();
      break;
    case 't': 
      toggleStatsDraw();
      break;
    case 'r': 
      rotateCamera();
      break;
    /**
    * case 'R' (01/12/16 YS)
    */
    case 'R':
      toggleDDP();
      break;
    case 'v': 
      changeDemo();
      break;
    case 'a': 
      toggleAxes();
      break;
    case 'g': 
      toggleGridOnly();
      break;
    case 'z': 
      toggleStaticOverride();
      updateAllNodes();
      break;
    case '[': 
      togglePlanSat();
      break;
    case ']': 
      togglePlanStat();
      break;
    case 'l': 
      togglePlanDraw();
      break;
    case 'k': 
      rotatePieces();
      updateAllNodes();
      break;
    case 'f': 
      flip();
      break;
    case '`': 
      toggle2DProjection();
      break;
    case 'e': 
      toggleImageDraw();
      break;
    case 'b': 
      toggleScoreWebDraw();
      break;
    case 'w': 
      changeImageMode();
      break;
    case 'x': 
      changeScoreWebMode();
      break;
    case 'n':
      toggleNodes();
      break;
    case 'N':
      changeNodes();
      break;
    case '=':
      changeDetected = true;
      simCounter = simTime;
      saveMetaJSON("metadata.json");
      checkSendNodesJSON("user");
      break;
    case 'F':
      toggleFaux3D();
      break;
    case '1':
      sendCommand("1", 6669);
      break;
    case '2':
      sendCommand("2", 6669);
      break;
    case '3':
      sendCommand("3", 6669);
      break;
    case '4':
      sendCommand("4", 6669);
      break;
    case '5':
      sendCommand("5", 6669);
      break;
    case '6':
      sendCommand("6", 6669);
      break;
    case '-':
      projH--;
      saveProjectorLocation();
      break;
    case '+':
      projH++;
      saveProjectorLocation();
      break;
  }
  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      projU--;
      saveProjectorLocation();
    }  
    if (keyCode == RIGHT) {
      projU++;
      saveProjectorLocation();
    }  
    if (keyCode == DOWN) {
      projV++;
      saveProjectorLocation();
    }  
    if (keyCode == UP) {
      projV--;
      saveProjectorLocation();
    }
  }
}


