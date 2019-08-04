//
//  InterfaceController.swift
//  Tabuada WatchKit Extension
//
//  Created by Eduarda Mello on 04/08/19.
//  Copyright © 2019 Eduarda Mello. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var slider: WKInterfaceSlider!
    @IBOutlet weak var table: WKInterfaceTable!
    
    @IBAction func sliderSelecionado(_ value: Float) {
        
        if value != 0 {
            let valorRecuperado = Int(value)
            let total = 10
            
            table.setNumberOfRows(total, withRowType: "TabuadaRowController")
            
            for var indice in 0..<total{
                
                let resultado = indice * valorRecuperado
                let row = table.rowController(at: indice) as! TabuadaRowController
                row.texto.setText(String(valorRecuperado) + " X " + String(indice) + " = " + String(resultado))
                
            }
        }else{
            
            table.setNumberOfRows(0, withRowType: "TabuadaRowController")
            
        }
        
        
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
    }

}
