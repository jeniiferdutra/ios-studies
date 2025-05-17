//
//  UIViewController + Extension.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 29/04/25.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyBoard() {
        
        // Cria um gesto de toque que chama 'endEditing' na view (isso fecha o teclado)
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        
        // Permite que o toque continue sendo enviado para outros elementos da interface (como botões)
        tap.cancelsTouchesInView = false
        
        // Adiciona o gesto à view principal para que funcione na tela toda
        view.addGestureRecognizer(tap)
    }
}
