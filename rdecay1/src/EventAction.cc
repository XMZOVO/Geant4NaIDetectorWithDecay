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
/// \file radioactivedecay/rdecay01/src/EventAction.cc
/// \brief Implementation of the EventAction class
//
// $Id: EventAction.cc 68030 2013-03-13 13:51:27Z gcosmo $
//
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "EventAction.hh"
#include "EventMessenger.hh"
#include "Run.hh"
#include "RunAction.hh"
#include "Randomize.hh"
#include "G4Event.hh"
#include "G4UnitsTable.hh"
#include "G4SystemOfUnits.hh"
#include "G4RunManager.hh"
#include "g4root.hh"
#include <iomanip>

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

EventAction::EventAction()
:G4UserEventAction(),
 fPrintModulo(10000),
 fDecayChain(),
// fEventMessenger(0),
 fTotalEnergyDeposit(0.)
{
  fEventMessenger = new EventMessenger(this);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

EventAction::~EventAction()
{
  delete fEventMessenger;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void EventAction::BeginOfEventAction(const G4Event*)
{
 fDecayChain = " ";

 //initializations
 fTotalEnergyDeposit = 0.;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void EventAction::EndOfEventAction(const G4Event* evt)
{
 G4int evtNb = evt->GetEventID();
 //printing survey
 //
 if (evtNb%fPrintModulo == 0)
   G4cout << "\n end of event " << std::setw(6) << evtNb
          << " :" + fDecayChain << G4endl;

// G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();

 FILE *opf1 = fopen("/Users/roy/Documents/data?/DatafromSim/Ra226/Ra226-25-11000000.dat","a");
 if (fTotalEnergyDeposit>0. ) {
fprintf(opf1,"%d  %e \n", evt->GetEventID()+1, fTotalEnergyDeposit/MeV);
}
fclose(opf1);




//    G4double sigma = 0.3/(200*sqrt(2*0.693)); //sigma = fwhm/(200*sqrt(2*0.693));

// fTotalEnergyDeposit = G4RandGauss::shoot(fTotalEnergyDeposit,sigma);
// analysisManager->FillH1(3,fTotalEnergyDeposit);


//    G4double sigma = 0.0537715;
    //G4double sigma = 0.03;
//    G4cout<<"sigma = "<<sigma<<G4endl;
//    G4cout<<fTotalEnergyDeposit<<" "<<G4RandGauss::shoot(0.,sigma)<<" "<<G4RandGauss::shoot(fTotalEnergyDeposit,sigma)<<G4endl;
    //

//    G4cout<<fTotalEnergyDeposit<<G4endl;


}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
