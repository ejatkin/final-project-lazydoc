//
//  Weight.swift
//  LazyDoctor
//
//  Created by Dan Pelensky on 1/2/17.
//  Copyright © 2017 Elizabeth Atkin, Dan Pelensky, Veronica Sonzini. All rights reserved.
//

import UIKit

class TypeOfInfection {
    
    let CNSArray = ["Bacterial Meningitis \n(empirical treatment)", "Encephalitis", "Bacterial Meningitis \n(pathogen identified)", "Meningococcal disease \n(prophylaxis)", "Close contacts of \nHaemophilus influenza type B"].sorted()
    
    let lowerRespiratoryTractArray = ["Community Acquired Pneumonia (CAP)", "Critically ill patients \n with CAP with anticipated ITU admission i.e. \n requiring critical care outreach review", "Hospital Acquired Pneumonia (HAP)", "Aspiration Pneumonia", "Infective exacerbation of COPD or Asthma or LRTI with no evidence of pneumonia", "Empyema", "Acute Chest Syndrome in sickle cell patient"].sorted()
    
    let UTIArray = ["Lower UTI", "UTI in pregnancy", "Pyelonephritis",  "Urosepsis", "Catheter associated bacteriuria (Ca-UTI", "Asymptomatic bacteriuria"].sorted()
    
    let GITArray = ["Intra-Abdominal Infection", "Biliary Sepsis Acute Cholecystitis/ Cholangitis", "Cirrhotic Patients with Intra-abdominal sepsis", "SBP (Spontaneous Bacterial Peritonitis)", "Acute Necrotising Pancreatitis"].sorted()
    
    let skinArray = ["Non-severe cellulitis", "Severe Cellulitis", "Severe Cellulitis and MRSA infection is a possibility", "Suspected Necrotising Fasciitis", "Synergistic Gangrene", "Animal or human bite - Prophylaxis/non severe infection", "Animal or human bite Clinically severe infection"].sorted()
    
    let boneAndJointArray = ["Acute Osteomyelitis", "Septic Arthritis", "Acute Osteomyelitis or Septic Arthritis and MRSA infection is a possibility", "Osteomyelitis in Sickle Cell disease", "Chronic Osteomyelitis / Contiguous Osteomyelitis", "Prosthetic Joint Infection or Infected Metal- work", "Discitis / Epidural abscess", "Diabetic foot or leg ulcer"].sorted()
    
    let OBGYNArray = ["Pelvic Inflammatory Disease", "Tubo – ovarian abscess", "Sepsis in Pregnancy / Puerperium", "Severe Sepsis/ Septic Shock in Pregnancy/ Puerperium"].sorted()
    
    let genitalArray = ["Epididymo-orchitis likely sexually transmitted pathogen", "Epididymo-orchitis likely enteric organisms", "Acute Prostatitis", "Chronic Prostatitis", "Acute Genital Herpes"].sorted()
    
    let ENTArray = ["Pharyngitis/ Tonsillitis", "Quinsy or peritonsillar abscess", "Epiglottitis", "Localised otitis externa", "Localised otitis externa with associated cellulitis of the pinna and /or regional adenitis", "Diffuse Otitis externa", "Malignant Otitis externa", "Acute otitis media (adults)", "Acute bacterial sinusitis", "Preseptal Periorbital cellulitis", "Postseptal and orbital cellulitis/ abscess"].sorted()
    
    let bloodArray = ["Native Valve Infective Endocarditis Indolent presentation", "Native Valve Infective Endocarditis acute presentation", "Prosthetic Valve", "Infective Endocarditis", "Sepsis - Query Source - likely chest or urine", "Sepsis – No source identified", "Severe Sepsis or Septic Shock", "Neutropenic Sepsis"].sorted()
    
}
