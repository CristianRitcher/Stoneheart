//
//  subirArchivo.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 12/04/24.
//

import SwiftUI
import Firebase
import FirebaseStorage

func uploadToFirebase(_ documentURL: URL) {
    // Subir documento a Firebase Storage
    let storageRef = Storage.storage().reference().child("documents").child(documentURL.lastPathComponent)
    storageRef.putFile(from: documentURL, metadata: nil) { metadata, error in
        if let error = error {
            print("Error al subir el documento: \(error.localizedDescription)")
        } else {
            print("Documento subido exitosamente")
            // Aquí puedes realizar otras operaciones después de subir el documento
        }
    }
}

struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var selectedDocument: URL?
    @Binding var isPresented: Bool

    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let documentPicker = UIDocumentPickerViewController(documentTypes: ["public.data"], in: .open)
        documentPicker.allowsMultipleSelection = false
        documentPicker.delegate = context.coordinator
        return documentPicker
    }

    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPicker

        init(parent: DocumentPicker) {
            self.parent = parent
        }

        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            if let url = urls.first {
                parent.selectedDocument = url
            }
            parent.isPresented = false
        }
    }
}
