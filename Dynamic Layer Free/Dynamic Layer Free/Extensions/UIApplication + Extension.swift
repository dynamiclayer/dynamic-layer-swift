//
//  File.swift
//  Dynamiclayer
//
//  Created by Muhammad Abbas on 16/12/2024.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
