//
//  loginView.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 11/04/24.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

struct loginView: View {
    @StateObject var userData = UserData()
    @State private var correo: String = ""
    @State private var contrasena: String = ""
    @State private var logeado: Bool = false
    let color: Colores = Colores()
    
    
    
    var body: some View {
        if logeado {
            TabBar().environmentObject(userData)
        } else {
            content
        }
    }
    
    var content: some View {
        NavigationView {
            
            ScrollView {
                ZStack {
                    
                    GeometryReader { geometry in
                        Rectangle()
                            .foregroundColor(color.rojo())
                            .cornerRadius(20)
                            .frame(width: geometry.size.width, height: geometry.size.height * 2)
                            .offset(y: -geometry.size.height * 0.2)
                            .navigationBarHidden(true)
                        Image("ujed3")
                            .resizable()
                            .frame(height: 170)
                            .padding(.bottom)
                            .padding(.trailing, 7)
                    }
                    
                    GeometryReader { geometry in
                        Rectangle()
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                            .frame(width: geometry.size.width, height: geometry.size.height * 2)
                            .offset(y: geometry.size.height * 0.32)
                    }
                    
                    Text("Iniciar Sesión")
                        .foregroundStyle(color.rojo())
                        .font(.title)
                        .padding(.bottom,100 )
                    
                    VStack{
                        
                        Group{
                            
                            // Matrícula
                            TextField("Correo electrónico", text: $correo)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.top, 300)
                                .padding(.bottom, 30)
                            
                            // contraseña
                            SecureField("Contraseña", text: $contrasena)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.bottom, 35)
                            
                            // botón de envío de formulario
                            Button("Login") {
                                Auth.auth().signIn(withEmail: correo, password: contrasena) { authResult, error in
                                    if let error = error {
                                        print(error)
                                        return
                                    }
                                    if let authResult = authResult {
                                        Task{
                                            userData.nombre = await getNombre(correo: correo)
                                            userData.apellidoPaterno = await getApellidoPaterno(correo: correo)
                                            userData.apellidoMaterno = await getApellidoMaterno(correo: correo)
                                            userData.matricula = await getMatricula(correo: correo)
                                            userData.adscripcion = await getAdscripcion(correo: correo)
                                            userData.tipoTrabajador = await getTipoTrabajador(correo: correo)
                                            userData.turno = await getTurno(correo: correo)
                                        }
                                        userData.correo = correo
                                        logeado = true
                                    }
                                }
                            }
                            .foregroundStyle(Color.white)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(color.rojo())
                            .cornerRadius(25)
                            
                            NavigationLink("¿Olvidaste tu contraseña?",
                                           destination: CorreoView())
                            .foregroundStyle(color.rojo())
                            .font(.subheadline)
                            .padding(.top, 12)
                            
                            NavigationLink("¿No tienes una cuenta? Regístrate aquí.", destination: RegistroView())
                                .foregroundStyle(color.rojo())
                                .font(.subheadline)
                                .padding(.top, 12)
                            
                        }
                        .padding(.horizontal, 40)
                    }
                }
            }
        }
    }
}

#Preview {
    loginView()
}
