//
//  ViewController.swift
//  Springs
//
//  Created by Maestro on 22/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwCuadro1: UIView!
    @IBOutlet weak var vwCuadro2: UIView!
    
    var azulAnimado = false
    var verdeAnimado = false
    
    var ocupado = false
    
    func animarCuadroVerde(){
        if(verdeAnimado){
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro2.center.y -= 200
                self.vwCuadro2.center.x += 50
            }, completion: { _ in UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro2.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: {_ in self.ocupado = false})})
            
        }else{
            if(azulAnimado){
                animarCuadroAzul()
            }
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro2.center.y += 200
                self.vwCuadro2.center.x -= 50
            }, completion: { _ in UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro2.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }, completion: {_ in self.ocupado = false})})
            
        }
        verdeAnimado = !verdeAnimado
    }
    
    func animarCuadroAzul(){
        if(azulAnimado){
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro1.center.y -= 200
                self.vwCuadro1.center.x -= 50
            }, completion: { _ in UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro1.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: {_ in self.ocupado = false})})
        }else {
            if(verdeAnimado){
                animarCuadroVerde()
            }
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro1.center.y += 200
                self.vwCuadro1.center.x += 50
            }, completion: { _ in UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
                self.vwCuadro1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }, completion: {_ in self.ocupado = false})})
        }
        
        azulAnimado = !azulAnimado
        
    }
    
    @IBAction func btnCuadroAzul(_ sender: Any) {
        if(!ocupado){
            ocupado = true
            animarCuadroAzul()
        }
    }
    
    @IBAction func btnCuadroVerde(_ sender: Any) {
        if(!ocupado){
            ocupado = true
            animarCuadroVerde()
    }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

