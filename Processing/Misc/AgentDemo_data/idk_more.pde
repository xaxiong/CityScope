// for(int m = 0; m<50; m++){
//      float x = random(10, p.width-10);
//      float y = random(10, p.height-10);
//      
//  if( 
//  (((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0]))) 
//      && 
//     ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//     ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//        ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//        ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//        ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//       ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1])) <=((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15]))
//       )
//      {
//      origin1[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//    else if (
//    (((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0]))) 
//      && 
//     ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//     ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//     ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//       ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//       ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//      ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//       ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//       ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//       ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//       ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2])) <=((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15]))
//       ){
//       origin2[k*(numNodes-1)+j] = new PVector(x, y);
//
//       }
//       
//   else if(
//       (((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))) && 
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <=  ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <=  ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//     ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <=  ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <= ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <=  ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) <=((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15]))
//      )
//      {
//      origin[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//      else if( (((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0]))) 
//      && 
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3])) <=((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin3[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//      
//    else if( ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin4[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }     
// else if( ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin5[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }  
//else if( ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin6[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
// else if( ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <= ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//     ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7])) <=((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin7[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//else if( ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin8[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }      
//
// else if( ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//     ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin9[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }  
//else if( ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <=((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin10[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//      
// else if( ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) 
//       && 
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <= ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11])) <=((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin11[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//
//else if( ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) && 
//     ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//     ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//     ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//     ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin12[k*(numNodes-1)+j] = new PVector(x, y);
//
//      }
//      
//else if( ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) 
//      && 
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14]))
//      &&
//      ((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin13[k*(numNodes-1)+j] = new PVector(x, y);
//      }      
//      
//      else if( ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0])) 
//      && 
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <= ((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <= ((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])) <= ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])))
//      {
//      origin14[k*(numNodes-1)+j] = new PVector(x, y);
//      }
//      
//      else if( ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <= ((x  - towers_x[0]) * (x - towers_x[0])) +  ((y  - towers_y[0]) * (y  - towers_y[0]))
//      && 
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <= ((x  - towers_x[2]) * (x - towers_x[2])) +  ((y  - towers_y[2]) * (y  - towers_y[2]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[3]) * (x - towers_x[3])) +  ((y  - towers_y[3]) * (y  - towers_y[3]))
//      &&
//      ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[4]) * (x - towers_x[4])) +  ((y  - towers_y[4]) * (y  - towers_y[4]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[5]) * (x - towers_x[5])) +  ((y  - towers_y[5]) * (y  - towers_y[5]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[6]) * (x - towers_x[6])) +  ((y  - towers_y[6]) * (y  - towers_y[6]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <= ((x  - towers_x[1]) * (x - towers_x[1])) +  ((y  - towers_y[1]) * (y  - towers_y[1]))
//      &&
//      ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[7]) * (x - towers_x[7])) +  ((y  - towers_y[7]) * (y  - towers_y[7]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[8]) * (x - towers_x[8])) +  ((y  - towers_y[8]) * (y  - towers_y[8]))
//      &&
//      ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[9]) * (x - towers_x[9])) +  ((y  - towers_y[9]) * (y  - towers_y[9]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[10]) * (x - towers_x[10])) +  ((y  - towers_y[10]) * (y  - towers_y[10]))
//      &&
//      ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[11]) * (x - towers_x[11])) +  ((y  - towers_y[11]) * (y  - towers_y[11]))
//      &&
//     ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[12]) * (x - towers_x[12])) +  ((y  - towers_y[12]) * (y  - towers_y[12]))
//      &&
//      ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[13]) * (x - towers_x[13])) +  ((y  - towers_y[13]) * (y  - towers_y[13]))
//      &&
//      ((x  - towers_x[15]) * (x - towers_x[15])) +  ((y  - towers_y[15]) * (y  - towers_y[15])) <=((x  - towers_x[14]) * (x - towers_x[14])) +  ((y  - towers_y[14]) * (y  - towers_y[14])))
//      {
//      origin15[k*(numNodes-1)+j] = new PVector(x, y);
//      }   
//      else{
//        origin[k*(numNodes-1)+j] = new PVector(towers_x[0], towers_y[0]);
//        origin1[k*(numNodes-1)+j] = new PVector(towers_x[1], towers_y[1]);
//        origin2[k*(numNodes-1)+j] = new PVector(towers_x[2], towers_y[2]);
//        origin3[k*(numNodes-1)+j] = new PVector(towers_x[3], towers_y[3]);
//        origin4[k*(numNodes-1)+j] = new PVector(towers_x[4], towers_y[4]);
//        origin5[k*(numNodes-1)+j] = new PVector(towers_x[5], towers_y[5]);
//        origin6[k*(numNodes-1)+j] = new PVector(towers_x[6], towers_y[6]);
//        origin7[k*(numNodes-1)+j] = new PVector(towers_x[7], towers_y[7]);
//        origin8[k*(numNodes-1)+j] = new PVector(towers_x[8], towers_y[8]);
//        origin9[k*(numNodes-1)+j] = new PVector(towers_x[9], towers_y[9]);
//        origin10[k*(numNodes-1)+j] = new PVector(towers_x[10], towers_y[10]);
//        origin11[k*(numNodes-1)+j] = new PVector(towers_x[11], towers_y[11]);
//        origin12[k*(numNodes-1)+j] = new PVector(towers_x[12], towers_y[12]);
//        origin13[k*(numNodes-1)+j] =new PVector(towers_x[13], towers_y[13]);
//        origin14[k*(numNodes-1)+j] = new PVector(towers_x[14], towers_y[14]);
//        origin15[k*(numNodes-1)+j] = new PVector(towers_x[15], towers_y[15]);
//      }
//    }
//    }
//   }
// 
