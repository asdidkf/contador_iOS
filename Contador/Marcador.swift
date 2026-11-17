//
//  Marcador.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct Marcador: View {
    @State private var contador1 = 0
    @State private var contador2 = 0
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Marcador")
                .font(.largeTitle)
                .bold()
            HStack(spacing: 24) {
                VStack(spacing: 16) {
                    Text("Equipo 1")
                        .bold()
                    Text("\(contador1)")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundStyle(contador1 >= 10 ? Color.orange : Color.primary)
                        .contentTransition(.numericText())
                    HStack(spacing: 16) {
                        Button {
                            withAnimation {
                                contador1 -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador1 == 0)
                        Button {
                            withAnimation {
                                contador1 += 1
                            }
                        } label: {
                            Image(systemName: "plus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                }
                .tint(.blue)
                Text("vs")
                    .tint(.gray)
                    .bold()
                VStack(spacing: 16) {
                    Text("Equipo 2")
                        .bold()
                    Text("\(contador2)")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundStyle(contador2 >= 10 ? Color.orange : Color.primary)
                        .contentTransition(.numericText())
                    HStack(spacing: 16) {
                        Button {
                            withAnimation {
                                contador2 -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador2 == 0)
                        Button {
                            withAnimation {
                                contador2 += 1
                            }
                        } label: {
                            Image(systemName: "plus").frame(width: 30, height: 22)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                }
                .tint(.orange)
            }
            Button("Reiniciar", role: .destructive) {
                contador1 = 0
                contador2 = 0
            }
            if contador1 > contador2 {
                Text("Va ganando Equipo 1")
                    .font(.headline)
            } else if contador1 < contador2 {
                Text("Va ganando Equipo 2")
                    .font(.headline)
            } else {
                Text("Empate")
                    .font(.headline)
            }
        }
        .padding()
    }
}

#Preview {
    Marcador()
}
