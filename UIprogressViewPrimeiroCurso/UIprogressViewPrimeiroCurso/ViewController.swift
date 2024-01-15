//
//  ViewController.swift
//  UIprogressViewPrimeiroCurso
//
//  Created by Jefferson Alves on 15/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Inserindo cor da Barra
        progressView.tintColor = .systemGreen
        
        // inserindo ap partido de qual contagem vai iniciar
        //progressView.progress = 0.3
        
        // Inserindo cor parte da barra vazia withAlpha ser para configurar tonalidade da cor
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.9)
        
        // criando uma constante para customizar quantidade totoal de progress view
        let total = Progress(totalUnitCount: 100)
        
        //o valor inicial ser de 25% dfo progress
        total.completedUnitCount = 30
        
        // setando nossa contante no progressView OBS. fractionCompleted indica qual é a fracao que querrmos completar com nosso progress
        
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
    
        
    }


}

