{
gROOT->Reset();
#include "Riostream.h"

  ifstream in;
  in.open("out60.dat");
  Double_t x, sum, evt;FWHM;
  FWHM = 0.0;
  TRandom *MT=  new TRandom3();
  double fa=-0.0137257;
  double fb=0.0739501;
  double fc=-0.152982;
  double sigma = 0.0;
  sum =0;
  Int_t nlines=0;
  TH1F *h1 = new TH1F("h1","x distribution",4096,0.,1.5);

  TRandom3 r;
  while(!in.eof()){
    in >> evt>> x;
    FWHM = fa + fb * sqrt(x + fc*x*x);
    sigma = FWHM/2.35482;
    double r = MT->Gaus();
    x = x + sigma * r;
//    x=r.Gaus(x,0.0012);
    h1->Fill(x);
    nlines++;

  }
  in.close();

  h1->SetTitle(";Energy (MeV);Counts");

//  TPaveStats *canv = new TPaveStats();
//  gStyle->SetOptStat(1111111);
//  //Background Removal
//  a = h1->ShowBackground(20,"nocompton");
//  h1->Add(a,-1);
TCanvas* c1 = new TCanvas("c1", "Eu152");
//
//c1->SetLogy(1);
//c1->cd();
//c1->Update();
  h1->Draw();

//ofstream fout("Co60.csv");
//Int_t entries = h1->GetEntries();
//for(int i=1;i<=h1->GetNbinsX();i++) {
//for(int j=1;j<=h1->GetNbinsY();j++) {
//fout<<h1->GetXaxis()->GetBinCenter(i)<<","<<h1->GetBinContent(i,j) / entries <<endl;
//}
//}
//fout.close();




}
