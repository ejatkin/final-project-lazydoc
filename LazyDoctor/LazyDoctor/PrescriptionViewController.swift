//
//  PrescriptionViewController.swift
//  LazyDoctor
//
//  Created by María Verónica Sonzini on 02/02/2017.
//  Copyright © 2017 Elizabeth Atkin, Dan Pelensky, Veronica Sonzini. All rights reserved.
//

import UIKit

class PrescriptionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var dosageLabel: UILabel!
    @IBOutlet weak var commentsTextView: UITextView!
    
    var clinicalCondition: ClinicalCondition? = nil
    
    var prescription = Prescription()
    var cnsAntibiotics: [String]!
    var respiratoryAntibiotics: [String]!
    var urinaryAntibiotics: [String]!
    var gastroAntibiotics: [String]!
    var skinAndSoftTissueAntibiotics: [String]!
    var boneAndJointAntibiotics: [String]!
    var obgynAntibiotics: [String]!
    var genitalAntibiotics: [String]!
    var entAntibiotics: [String]!
    var cardioAntibiotics: [String]!
    
    var antibiotics = [Antibiotic]()
    var filteredArray = [Antibiotic]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        cnsAntibiotics = prescription.cnsAntibiotics
        //        respiratoryAntibiotics = prescription.respiratoryAntibiotics
        //        urinaryAntibiotics = prescription.urinaryAntibiotics
        //        gastroAntibiotics = prescription.gastroAntibiotics
        //        skinAndSoftTissueAntibiotics = prescription.skinAndSoftTissueAntibiotics
        //        boneAndJointAntibiotics  = prescription.boneAndJointAntibiotics
        //        obgynAntibiotics = prescription.obgynAntibiotics
        //        genitalAntibiotics = prescription.genitalAntibiotics
        //        entAntibiotics = prescription.entAntibiotics
        //        cardioAntibiotics = prescription.cardioAntibiotics
        //
        
        getAllAntibiotics()
        filterAntibiotics()
    }
    
    func getAllAntibiotics() -> [Antibiotic] {
        
        
        
        let amoxicillin = Antibiotic(name: "Amoxicillin", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "2g every 4 hours", isForPregnant: "Not Pregnant", penicillinAllergenic: "Allergic to Penicillin")
        let ceftriaxone = Antibiotic(name: "Ceftriaxone", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "2g every 12 hours", isForPregnant: "Not Pregnant", penicillinAllergenic: "Allergic to Penicillin")
        let chloramphenicol = Antibiotic(name: "Chloramphenicol", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "25mg every 6 hours", isForPregnant: "Not Pregnant", penicillinAllergenic: "Not Allergic to Penicillin")
        let aciclobio = Antibiotic(name: "Aciclobio", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "10mg per kg every 8 hours", isForPregnant: "Not Pregnant", penicillinAllergenic: "Not Allergic to Penicillin")
        let ciprofloxacin = Antibiotic(name: "Ciprofloxacin", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "500mg stat dose", isForPregnant: "Pregnant", penicillinAllergenic: "Not Allergic to Penicillin")
        let gentamicin = Antibiotic(name: "Gentamicin", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "Refer to microbiology", isForPregnant: "Pregnant", penicillinAllergenic: "Not Allergic to Penicillin")
        let rifampicin = Antibiotic(name: "Rifampicin", system: "Central Nervous System", severity: "Moderate", dosagePerKG: "600mg daily", isForPregnant: "Not Pregnant", penicillinAllergenic: "Not Allergic to Penicillin")
        
        antibiotics = [amoxicillin, ceftriaxone, chloramphenicol, aciclobio, ciprofloxacin, gentamicin, rifampicin]
        
        return antibiotics
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrescriptionCell") as? PrescriptionTableViewCell
        let row = indexPath.row
        cell?.prescriptionLabel.text = filteredArray[row].name

       
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredArray.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
    }
    
    func filterAntibiotics() {
        filteredArray = antibiotics.filter { $0.system == clinicalCondition?.system && $0.isForPregnant == clinicalCondition?.isPregnant && $0.penicillinAllergenic == clinicalCondition?.isPenicillin}
    }


    }

