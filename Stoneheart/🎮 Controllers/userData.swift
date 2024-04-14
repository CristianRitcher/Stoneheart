//
//  userData.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 13/04/24.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import SwiftUI
import Combine

class UserData: ObservableObject {
    @Published var nombre: String = ""
    @Published var correo: String = ""
    @Published var apellidoPaterno: String = ""
    @Published var apellidoMaterno: String = ""
    @Published var matricula: String = ""
    @Published var tipoTrabajador: String = ""
    @Published var adscripcion: String = ""
    @Published var turno: String = ""
    @Published var id: String = ""
    @Published var fotoPerfil: String = ""
    
}

func getNombre(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["nombre"] as? String {
                return info
            }
        }
        
        return "Nombre no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}

func getApellidoPaterno(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["apellido_paterno"] as? String {
                return info
            }
        }
        
        return "Apellido paterno no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}

func getApellidoMaterno(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["apellido_materno"] as? String {
                return info
            }
        }
        
        return "Apellido materno no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}

func getMatricula(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["matricula"] as? String {
                return info
            }
        }
        
        return "Matricula no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}

func getAdscripcion(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["adscripcion"] as? String {
                return info
            }
        }
        
        return "Adscripcion no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}

func getTurno(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["turno"] as? String {
                return info
            }
        }
        
        return "Turno no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}

func getTipoTrabajador(correo: String) async  -> String {
    
    let db = Firestore.firestore()
    
    do {
        let querySnapshot = try await db.collection("usuarios").whereField("correo", isEqualTo: correo)
            .getDocuments()
        
        for document in querySnapshot.documents {
            if let info = document.data()["tipo_trabajador"] as? String {
                return info
            }
        }
        
        return "Tipo de trabajador no encontrado"
        
    } catch {
        print("Error getting documents: \(error)")
        
        return "Error al obtener datos"
    }

}
