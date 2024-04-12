//
//  IconsBootcamp.swift
//  SwiftUITutorial
//
//  Created by Antelmo Santillan on 26/02/24.
//

import SwiftUI

struct CorreoView: View {
    @State private var correoElectronico: String = ""
    
    
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
                            .frame(width: geometry.size.width, height: geometry.size.height * 3)
                            .offset(y: geometry.size.height * 0.35)
                        
                        
                            
                    }
                    Text("Restablece tu contraseña")
                        .foregroundStyle(redUJED)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.top, 1)
                    VStack{
                       
                    
                        
                        Group{
                            
                            // Matricula
                            TextField("Correo electronico", text: $correoElectronico)
                                .padding(10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .padding(.top, 350)
                                .padding(.bottom, 30)
                            
                            Text("Ingresa la dirección de correo electrónico que usaste para registrarte y se te enviará un correo con tu nombre a mensaje con tu nombre y un enlace para restablecer tu contraseña")
                                .font(.caption)
                                .padding(.bottom, 24)
                            
                        
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            // botón de envío de formulario
                            Button("Enviar") {
                                // código
                            }
                            .foregroundStyle(Color.white)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(redUJED)
                            .cornerRadius(25)
                            
                            
        
                          
                          
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
    CorreoView()
}
