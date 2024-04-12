//
//  IconsBootcamp.swift
//  SwiftUITutorial
//
//  Created by Antelmo Santillan on 26/02/24.
//

import SwiftUI

struct LoginView: View {
    @State private var matricula: String = ""
    @State private var contrasena: String = ""
    
    
    let redUJED = Color(red: 0.6941176470588235, green: 0.09411764705882353, blue:0.18823529411764706)
    var body: some View {
        
        NavigationView {
            ScrollView {
                ZStack {
                    GeometryReader { geometry in
                        Rectangle()
                            .foregroundColor(redUJED)
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
                        .foregroundStyle(redUJED)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.bottom,100 )
                    VStack{
                       
                    
                        
                        Group{
                            
                            // Matrícula
                            TextField("Matrícula", text: $matricula)
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
                                // código
                            }
                            .foregroundStyle(Color.white)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(redUJED)
                            .cornerRadius(25)
                            
                            
                            NavigationLink("¿Olvidaste tu contraseña?",
                                           destination: CorreoView())
                                .foregroundStyle(redUJED)
                                .font(.subheadline)
                                .padding(.top, 12)
                            
                            NavigationLink("¿No tienes una cuenta? Registrate aqui",
                                           destination: RegistroView())
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
    LoginView()
}
