//
//  inicioView.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 11/04/24.
//

//
//  IconsBootcamp.swift
//  SwiftUITutorial
//
//  Created by Antelmo Santillan on 26/02/24.
//

import SwiftUI

struct inicioView: View {
    @EnvironmentObject var userData: UserData
    @State private var nombre: String = ""
    @State private var apellidoPaterno: String = ""
    @State private var apellidoMaterno: String = ""
    @State private var matricula: String = ""
    
    
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
                        
                        
                        GeometryReader { geometry in
                            
                            
                    
                            Text("\(userData.nombre) \(userData.apellidoPaterno) \(userData.apellidoMaterno)")
                                .foregroundStyle(Color.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .padding(.top, 10)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                               
                               
                                
                        }
                        
                    }
                    
                    GeometryReader { geometry in
                        Rectangle()
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                            .frame(width: geometry.size.width, height: geometry.size.height * 2)
                            .offset(y: geometry.size.height * 0.22)
                        
                        
                        
                            
                    }
                    
                    Circle()
                        .frame(width: 150)
                        .foregroundStyle(Color(red: 0.9, green: 0.9, blue: 0.9))
                        .padding(.bottom, 340 )
                    
                    VStack{
                       
                    
                        
                        Group{
                          
                            VStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundStyle(Color(red: 0.9, green: 0.9, blue: 0.9))
                                    .frame(height: 220)
                                    .padding(.top, 250)
                                    .overlay(
                                        Text("Adscripción:" )
                                            .font(.system(size: 25))
                                            .foregroundStyle(redUJED)
                                            .padding(.top, 105)
                                        
                                    )
                                    .overlay(
                                        Text("\(userData.adscripcion)" )
                                            .font(.system(size: 20))
                                            .fontWeight(.thin)
                                            .padding(15)
                                            .padding(.top, 210)
                                            .multilineTextAlignment(.center)
                                    )
                                    .overlay(
                                        Text("Turno:" )
                                            .font(.system(size: 25))
                                            .foregroundStyle(redUJED)
                                            .padding(.top, 330)
                                        
                                    )
                                    .overlay(
                                        Text("\(userData.turno)" )
                                            .font(.system(size: 20))
                                            .fontWeight(.thin)
                                            .padding(15)
                                            .padding(.top, 400)
                                    )
                            }
                            .padding(.bottom, 30 )
                           
                          
                            // botón de envío de formulario
                            NavigationLink("Completar registro") {
                                RegistroView()
                            }
                            .foregroundStyle(Color.white)
                            .padding(10)
                            .padding(.horizontal, 11)
                            .background(redUJED)
                            .cornerRadius(25)
                            
                            
                            Button("Cerrar sesión") {
                                // código
                            }
                            .foregroundStyle(Color.white)
                            .padding(10)
                            
                            .padding(.horizontal, 30)
                            .background(redUJED)
                            .cornerRadius(25)
                            .padding(.top, 25)
                            
        
                          
                        
                        }
                        .padding(.horizontal, 40)
                        
                    }
                    
                    
                    
                    
                }
            }
        }
        

        
     
    }
}

#Preview {
    inicioView()
}
