//
//  ContentView.swift
//  ImagePicker Demo
//
//  Created by Nicholas Forte on 19/03/22.
//

import SwiftUI


struct ContentView: View {
    
    @State var pickedImage: UIImage?
    @State var isPickerShowing = false
    
    var body: some View {
        VStack {
            
            if let pickedImage = pickedImage {
                Image(uiImage: pickedImage)
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            
            Button {                
                isPickerShowing = true
            } label: {
                Text("Pick a image")
            }
        }
        .sheet(isPresented: $isPickerShowing, onDismiss: nil){
            Picker(imageSelected: $pickedImage, isPickerShowing: $isPickerShowing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
