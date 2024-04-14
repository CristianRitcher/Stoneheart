//
//  modalView.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 12/04/24.
//

import SwiftUI
import ModalView

struct modalView: View {
    var body: some View {
        ModalPresenter {
            ModalLink(destination: SwiftUIView()) {
                Text("hola")
            }
        }
    }
}

#Preview {
    modalView()
}
