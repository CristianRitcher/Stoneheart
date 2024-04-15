//
//  generarVacantes.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 15/04/24.
//

import SwiftUI
import Firebase

struct User: Identifiable {
    var id: String
    var name: String
    var email: String
    // Otros campos que puedas tener en tus documentos de Firebase
}

struct UserCardView: View {
    var user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
                .font(.title)
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

