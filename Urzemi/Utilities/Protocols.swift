//
//  Protocols.swift
//  Urzemi
//
//  Created by Furkan Y. on 29.07.2020.
//  Copyright © 2020 Furkan Y. All rights reserved.
//

import Foundation

protocol BookHeaderDelegate{
    func handleFilterTapped(for cell: BookHeader)
}
protocol PopUpDelegate {
    func handleDismissal(for cell: OrderPopUp)
}
