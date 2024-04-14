//
//  SwiftUIView.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 12/04/24.
//

import SwiftUI

import SwiftUI
import Firebase
import FirebaseStorage

struct SwiftUIView: View {
    @State private var selectedDocument: URL?
    @State private var isShowingDocumentPicker = false
    
    var body: some View {
        VStack {
            if let documentURL = selectedDocument {
                Text("Documento seleccionado: \(documentURL.lastPathComponent)")
                
                Button("Subir a Firebase") {
                    uploadToFirebase(documentURL)
                }
                .padding()
            } else {
                Button("Seleccionar Documento") {
                    isShowingDocumentPicker.toggle()
                }
                .padding()
                .sheet(isPresented: $isShowingDocumentPicker) {
                    DocumentPicker(selectedDocument: $selectedDocument, isPresented: $isShowingDocumentPicker)
                }
            }
        }
    }
    
}

#Preview {
    SwiftUIView()
}
