//
//  CircleGroupView.swift
//  RestartApp-1-SwiftUIMasterclass
//
//  Created by Ömer Faruk Kılıçaslan on 27.11.2022.
//

import SwiftUI

struct CircleGroupView: View {
    
    //MARK: - Property
    
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    //MARK: - Body
    
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK

    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("ColorBlue")
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
