//
//  AddCardForm.swift
//  SpendingTracker
//
//  Copyright © 2022 Volkan Kuday. All rights reserved.
//

import SwiftUI

struct AddCardForm: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Add card form")
                
                TextField("Name", text: $name)
            }
            .navigationTitle("Add Credit Card")
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Cancel")
            }))
        }
    }
}

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardForm()
    }
}
