//
//  registroView.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 12/04/24.
//

import SwiftUI

struct RegistroView: View {
    @State private var matricula: String = ""
    @State private var correoElectronico: String = ""
    @State private var contrasena: String = ""
    @State private var confirmarContrasena: String = ""
    
    
    @Environment(\.presentationMode) var presentationMode
    
    let redUJED = Color(red: 0.6941176470588235, green: 0.09411764705882353, blue:0.18823529411764706)
    var body: some View {
        
        NavigationView{
            ScrollView {
                ZStack {
                    GeometryReader { geometry in
                        Rectangle()
                            .foregroundColor(redUJED)
                            .cornerRadius(20)
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.9)
                            .offset(y: -geometry.size.height * 0.2)
                        
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
                            .offset(y: geometry.size.height * 0.28)
                        
                        
                        
                            
                    }
                    Text("Regístrate")
                        .foregroundStyle(redUJED)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 200 )
                    VStack{
                       
                    
                        
                        Group{
                           
                            // Matricula
                            TextField("Matrícula", text: $matricula)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.top, 290)
                                .padding(.bottom, 30)
                            
                            //Correo
                            TextField("Correo electronico", text: $correoElectronico)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.bottom, 35)
                            
                            // Contraseña
                            SecureField("Contraseña", text: $contrasena)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.bottom, 30)
                            //Confirmar Contraseña
                            SecureField("Confirmar contraseña", text: $confirmarContrasena)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.bottom, 30)
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            // botón de envío de formulario
                            Button("Registrarse") {
                                
                            }
                            .foregroundStyle(Color.white)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(redUJED)
                            .cornerRadius(25)
                            
                            
        
                          
                           Button("¿Ya tienes una cuenta? Inicia sesión aqui?") {
                                presentationMode.wrappedValue.dismiss()
                               
                            }
                           .foregroundStyle(redUJED)
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
    RegistroView()
}
