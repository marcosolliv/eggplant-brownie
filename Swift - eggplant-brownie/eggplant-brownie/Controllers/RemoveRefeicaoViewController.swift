//
//  RemoveRefeicaoViewController.swift
//  eggplant-brownie
//
//   Created by Marcos on 26/10/21.

import UIKit

class RemoveRefeicaoViewController {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void) {
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert)
        let botaoCancelar = UIAlertAction(title: "Cancel", style: .cancel)
        alerta.addAction(botaoCancelar)
        let botaoRemover = UIAlertAction(title: "Remove", style: .destructive, handler: handler)
        
        alerta.addAction(botaoRemover)
        
        controller.present(alerta, animated: true, completion: nil)
    }
    
}
