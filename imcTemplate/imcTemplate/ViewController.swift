//
//  ViewController.swift
//  imcTemplate
//
//  Created by Gabriel Lopes on 26/05/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewResult: UIView!
    @IBOutlet weak var alturaTextField: UITextField!
    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var pessoaUIImage: UIImageView!
    @IBOutlet weak var imcLabel: UILabel!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        alturaTextField.delegate = self
//        pesoTextField.delegate = self
//
       
        }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
        
    
    @IBAction func calcularButton(_ sender: Any) {
        if let altura = Double(alturaTextField.text!),
           let peso = Double(pesoTextField.text!) {
            imc = peso / (altura*altura)
            mostrarImc()
           
        }
        
    }
    func mostrarImc() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Ideal"
                image = "ideal"
        case 18.5..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
            
        imcLabel.text = "\(Int(imc)): \(result)"
        pessoaUIImage.image = UIImage(named: image)
        viewResult.isHidden = false
        view.endEditing(true)
            
        }
        
        
    }
//
//extension ViewController: UITextFieldDelegate {
//    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if textField == alturaTextField {
//            let allowedAltura = CharacterSet(charactersIn: "0123456789.")
//            let characterSetAltura = CharacterSet(charactersIn: string)
//            return allowedAltura.isSuperset(of: characterSetAltura)
//        }
//        else if textField == pesoTextField {
//            let allowedPeso = CharacterSet(charactersIn: "0123456789.")
//            let characterSetPeso = CharacterSet(charactersIn: string)
//            return allowedPeso.isSuperset(of: characterSetPeso)
//    }
//    
//    return true
//    }
//    
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        if textField == alturaTextField {
//            let alturaValida = validaLabel(string: alturaTextField.text)
//            if !alturaValida {
//                return false
//            }
//        }
//        else if textField == pesoTextField {
//            let pesoValido = validaLabel(string: pesoTextField.text)
//            if !pesoValido {
//                return false
//    }
//        }
//        return true
//    }
//}
    
    
    
    
    
    
    
    
