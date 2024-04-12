//
//  tabView.swift
//  Stoneheart
//
//  Created by Cristian Ritcher on 28/03/24.
//

import SwiftUI

struct tabView: View {
    
    var body: some View {
        
        TabView {
            
            inicioView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Inicio")
            }
            
            inasistenciasView()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("Inasistencias")
                }
            
            tramitesView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("Trámites")
                }
            
            notificacionesView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notificaciones")
                }
            
            buscarView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Buscar")
                }
        }
    }
}
