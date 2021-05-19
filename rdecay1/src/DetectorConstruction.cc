//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
// $Id: B1DetectorConstruction.cc 75117 2013-10-28 09:38:37Z gcosmo $
//
/// \file B1DetectorConstruction.cc
/// \brief Implementation of the B1DetectorConstruction class

#include "DetectorConstruction.hh"

#include "G4RunManager.hh"
#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4Tubs.hh"
#include "G4Polyhedra.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SystemOfUnits.hh"
#include "G4AssemblyTriplet.hh"
#include "G4MultiUnion.hh"
#include "G4VisAttributes.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::DetectorConstruction()
        : G4VUserDetectorConstruction(),
          fScoringVolume(0)
{ }

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::~DetectorConstruction()
{ }

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VPhysicalVolume* DetectorConstruction::Construct()
{
    // Get nist material manager
    G4NistManager* nist = G4NistManager::Instance();

    // Option to switch on/off checking of volumes overlaps
    //
    G4bool checkOverlaps = true;

    //
    // World+
    //
    G4double world_sizeXYZ = 100*cm;
    G4Material* world_mat = nist->FindOrBuildMaterial("G4_AIR");

    G4Box* solidWorld =
            new G4Box("World",                       //its name
                      1*world_sizeXYZ, 1*world_sizeXYZ, 1*world_sizeXYZ);     //its size

    G4LogicalVolume* logicWorld =
            new G4LogicalVolume(solidWorld,          //its solid
                                world_mat,           //its material
                                "World");            //its name

    G4VPhysicalVolume* physWorld =
            new G4PVPlacement(0,                     //no rotation
                              G4ThreeVector(),       //at (0,0,0)
                              logicWorld,            //its logical volume
                              "World",               //its name
                              0,                     //its mother  volume
                              false,                 //no boolean operation
                              0,                     //copy number
                              checkOverlaps);        //overlaps checking

// SODIUM_IODIDE.
    G4Material* det_material = nist->FindOrBuildMaterial("G4_SODIUM_IODIDE");
    G4Element* O  = new G4Element("Oxygen"   ,"O" , 8,  16.00*g/mole);
    G4Element* elAl = new G4Element( "Aluminium","Al", 13,  27.00*g/mole);
    G4Material* Al2O3 = new G4Material("Al2O3", 3.970*g/cm3, 2);
    Al2O3->AddElement(elAl, 2);
    Al2O3->AddElement(O, 3);
    G4Material* Al_mat = nist->FindOrBuildMaterial("G4_Al"); //外壳材料
    G4Material* Si_mat = nist->FindOrBuildMaterial("G4_Si");


//Cylinder NaI Detectors
    G4double innerRadius = 0.*cm;
    G4double outerRadius = 7.6*cm;
    G4double hz = 7.6*cm;
    G4double startAngle = 0.*deg;
    G4double spanningAngle = 360.*deg;
    G4Tubs* solidNaIDetector = new G4Tubs("NaIDetector", innerRadius, outerRadius,
                                          hz, startAngle, spanningAngle);

    auto hex_detectorLV =
            new G4LogicalVolume(solidNaIDetector,				//its solid
                                det_material ,						//its material
                                "NaIDetector");				//its name

    G4ThreeVector pos1 = G4ThreeVector(0*cm, 0*cm, 0*cm);
//	G4ThreeVector pos2 = G4ThreeVector(5.3*cm+fSpace, 0*cm, 0*cm);
    G4RotationMatrix* myRotation1 = new G4RotationMatrix(); //旋转向量
    myRotation1->rotateX(0.*deg);
    myRotation1->rotateY(90.*deg); //绕Y轴顺时针旋转90度
    myRotation1->rotateZ(0.*deg);

    new G4PVPlacement(myRotation1,					//rotation
                      pos1,						//at position
                      hex_detectorLV,					//its logical volume
                      "NaIDetector1",				//its name
                      logicWorld,					//its mother volume
                      false,						//no boolean operation
                      0,							//copy number
                      checkOverlaps);				//overlaps checking

    //Lead Box for setup
//	auto leadOuter = new G4Box("leadOuter",36*cm,36*cm,36*cm); //铅外壳外高
//	auto leadInner = new G4Box("leadInner",30*cm,30*cm,30*cm); //铅外壳内高
//	auto solidLeadBox = new G4SubtractionSolid("LogicLeadBox",leadOuter,leadInner);//铅屏蔽层
//	auto logicLeadBox = new G4LogicalVolume(solidLeadBox,Pb,"logLeadBox");
//	new G4PVPlacement(0,G4ThreeVector(-27.3*cm,0*cm,0*cm),logicLeadBox,"LeadBox",logicWorld,false,0,checkOverlaps);
//
//	auto leadBoxVis = new G4VisAttributes(G4Colour(1.,1.,1.));
//	leadBoxVis->SetForceWireframe(true);
//	logicLeadBox->SetVisAttributes(leadBoxVis);

//    //Casing for detector
    auto casingBot1 = new G4Tubs("casingBot1",7.6*cm,8.0*cm,7.6*cm,0.*deg,360.*deg);
    auto casingBot2 = new G4Tubs("casingBot2",8.0*cm,8.3*cm,8.1*cm,0.*deg,360.*deg);
    auto casingEx1 = new G4Tubs("casingEx1",0*cm,8.0*cm,0.3*cm,0.*deg,360.*deg);
    auto casingEx2 = new G4Tubs("casingEx2",0*cm,8.3*cm,0.15*cm,0.*deg,360.*deg);
    auto casingEx3 = new G4Tubs("casingEx3",0*cm,8.0*cm,0.2*cm,0.*deg,360.*deg);

    auto logicCasingBot1 = new G4LogicalVolume(casingBot1,Al2O3,"logicCasingBot1");
    auto logicCasingBot2 = new G4LogicalVolume(casingBot2,Al_mat,"logicCasingBot2");
    auto logicCasingEx1 = new G4LogicalVolume(casingEx1,Al2O3,"logicCasingEx1");
    auto logicCasingEx2 = new G4LogicalVolume(casingEx2,Al_mat,"logicCasingEx2");
    auto logicCasingEx3 = new G4LogicalVolume(casingEx3,Si_mat,"logicCasingEx3");

    //内层外壳PV
    new G4PVPlacement(myRotation1,G4ThreeVector(0.*cm, 0.*cm, 0.*cm),logicCasingBot1,"casingBot1",logicWorld,false,0,checkOverlaps);
    new G4PVPlacement(myRotation1,G4ThreeVector(7.9*cm, 0.*cm, 0.*cm),logicCasingEx1,"casingEx1",logicWorld,false,0,checkOverlaps);
    //外层外壳PV
    new G4PVPlacement(myRotation1,G4ThreeVector(0.5*cm, 0.*cm, 0.*cm),logicCasingBot2,"casingBot2",logicWorld,false,0,checkOverlaps);
    new G4PVPlacement(myRotation1,G4ThreeVector(8.75*cm, 0.*cm, 0.*cm),logicCasingEx2,"casingEx2",logicWorld,false,0,checkOverlaps);
    new G4PVPlacement(myRotation1,G4ThreeVector(8.4*cm,0*cm,0*cm),logicCasingEx3,"casingEx3",logicWorld,false,0,checkOverlaps);
//
    //Quartz Piece
    auto FakePMT = new G4Tubs("FakePMT",0*cm,8.32*cm,3*cm,0.*deg,360.*deg);
    auto logicFakePMT = new G4LogicalVolume(FakePMT,Al_mat,"logicFakePMT");
    new G4PVPlacement(myRotation1,G4ThreeVector(-10.6*cm, 0.*cm, 0.*cm),logicFakePMT,"FakePMT",logicWorld,false,0,checkOverlaps);



//Visuals
//G4VisAttributes* aVisAtt= new G4VisAttributes(G4Colour(0,1.0,1.0));
//hex_detectorLV->SetVisAttributes(aVisAtt);
//G4VisAttributes* bVisAtt= new G4VisAttributes(G4Colour(1.0,1.0,1.0));
//logicWorld->SetVisAttributes(bVisAtt);

//The same Structure but with separate placements. Can't Treat the detector as a whole though.

//G4Polyhedra* solidPoly1 = new G4Polyhedra("Polyhedron1",phiStart, phiTotal,numSide,numZPlanes,zPlane,rInner,rOuter);
//G4LogicalVolume* logicPoly = new G4LogicalVolume(solidPoly1,det_material,"Polyhedron");
//Placement
//new G4PVPlacement(0,G4ThreeVector(0,0,-20*cm),logicPoly,"Polyhedron",logicWorld,false,3,checkOverlaps);//Simple placement. Just one
//new G4PVPlacement(0,G4ThreeVector(-r_hex,-0.5*R_hex,-20*cm),logicPoly,"Polyhedron",logicWorld,false,3,checkOverlaps);//1st hexagon placement
//new G4PVPlacement(0,G4ThreeVector(r_hex,-0.5*R_hex,-20*cm),logicPoly,"Polyhedron",logicWorld,false,0,checkOverlaps);//2nd hexagon placement
//new G4PVPlacement(0,G4ThreeVector(0.,R_hex,-20*cm),logicPoly,"Polyhedron",logicWorld,false,0,checkOverlaps);//3rd hexagon placement

    //
    fScoringVolume = hex_detectorLV;

    //
    //always return the physical World
    //
    return physWorld;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
