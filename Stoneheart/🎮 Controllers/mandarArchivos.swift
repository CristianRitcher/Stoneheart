//
//  mandarArchivos.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 12/04/24.
//

import SwiftUI
import PhotosUI
import Firebase
import FirebaseStorage

func urlImage(tramite: String) -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyyMMddHHmmss"
    let stringFecha = dateFormatter.string(from: Date())
    return "\(tramite)/\(stringFecha).jpg"
}

// Enviar imagenes
func uploadImage(image: UIImage, url: String) {
    
    let storage = Storage.storage()
    let storageRef = storage.reference().child("\(url)")
    
    // Convert the image into JPEG and compress the quality to reduce its size
    let data = image.jpegData(compressionQuality: 0.2)
    
    let metadata = StorageMetadata()
    metadata.contentType = "image/jpg"
    
    if let data = data {
        storageRef.putData(data, metadata: metadata) { (metadata, error) in
            if let error = error {
                    print("Error while uploading file: ", error)
            }

            if let metadata = metadata {
                    print("Metadata: ", metadata)
            }
        }
    }
}

func uploadFile(file: Data) {}
