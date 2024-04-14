//
//  uploadPhoto.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 12/04/24.
//

import SwiftUI
import PhotosUI
import Firebase
import FirebaseStorage


struct uploadPhoto: View {
    @State private var imagen: UIImage?
    @State private var photoPickerItem: PhotosPickerItem?
    
    
    
    var body: some View {
        VStack { 
            //if imagen != nil {
                //Image(uiImage: imagen!)
           // }
            
            PhotosPicker(selection: $photoPickerItem, matching: .images) {
                Rectangle()
            }
            
            Button("subir") {
                let url = urlImage(tramite: "file")
                uploadImage(image: imagen!, url: url)
            }
        }
        .onChange(of: photoPickerItem) { _, _ in
            Task {
                if let photoPickerItem,
                   let data = try? await photoPickerItem.loadTransferable(type: Data.self) {
                    if let image = UIImage(data: data) {
                        imagen = image
                    }
                }
            }
        }
    }
}

#Preview {
    uploadPhoto()
}
