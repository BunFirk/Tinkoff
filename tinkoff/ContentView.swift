//
//  ContentView.swift
//  tinkoff
//
//  Created by mac on 14.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.1 // piggy bank car
    @State private var heart = "heart"
    @State private var heartClick: Bool = false

    @State private var presentSheet = false
    
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading){ // пользователь
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .background(Color("cardBlockColor"))
                        .cornerRadius(100)
                    Text("User")
                        .fontWeight(.bold)
                    Image(systemName: "arrowshape.right")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 20, leading: 16, bottom: 20, trailing: 16))
            
            
            VStack{
                HStack{
                    ScrollView(.horizontal){ // истории/подсказки/интерестные факты
                        HStack{
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                            Rectangle()
                                .frame(width: 70, height: 70)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .padding(EdgeInsets(top: 20, leading: 10, bottom: 16, trailing: 0))
            
            
            VStack{
                HStack{
                    VStack{ // все операции
                        
                        HStack(alignment: .top){
                            Image(systemName: "list.bullet.rectangle.portrait")
                                .resizable()
                                .frame(width: 18, height: 21)
                                .foregroundColor(.blue)
                                .padding(1)
                            
                            VStack(alignment: .leading){
                                
                                VStack(alignment: .leading){
                                    Text("All operations") // счёт
                                        .fontWeight(.bold)
                                    Text("Spending in May")
                                    
                                }
                            }
                            
                            
                        }
                        .frame(maxWidth: 150, maxHeight: 85)
                        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 5))
                        .background(Color("cardBlockColor"))
                        .cornerRadius(20)
                        .shadow(color: Color("shadow"), radius: 20, x: 0, y: 0)
                        
                    }
                    .background(Color("backgroundColor"))
                    .edgesIgnoringSafeArea(.all)
                    
                    
                    VStack{
                        
                        HStack(alignment: .top){ // кэшбек и бонусы
                            Image(systemName: "dollarsign.arrow.circlepath")
                                .resizable()
                                .frame(width: 23, height: 20)
                                .foregroundColor(.blue)
                                .padding(3)
                            
                            VStack(alignment: .leading){
                                
                                VStack(alignment: .leading){
                                    Text("Cashback") // счёт
                                        .fontWeight(.bold)
                                    Text("and bonuses")
                                    
                                }
                            }
                            
                        }
                        .frame(maxWidth: 150, maxHeight: 85)
                        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 5))
                        .background(Color("cardBlockColor"))
                        .cornerRadius(20)
                        .shadow(color: Color("shadow"), radius: 20, x: 0, y: 0)
                        
                    }
                    .background(Color("backgroundColor"))
                    .edgesIgnoringSafeArea(.all)
                }
            }
            
            VStack{ // основной счёт
                HStack(alignment: .top){
                    Image(systemName: "dollarsign.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    
                    Spacer(minLength: 16)
                    
                    VStack(alignment: .leading){
                        Text("7$") // счёт
                            .fontWeight(.bold)
                        Text("Tinkoff Black")
                        
                        ScrollView(.horizontal){ // карты
                            HStack{
                                Image("card")
                                    .resizable()
                                    .frame(width: 45, height: 30)
                                    .cornerRadius(5)
                                
                                Image("card")
                                    .resizable()
                                    .frame(width: 45, height: 30)
                                    .cornerRadius(5)
                                
                                Image("card")
                                    .resizable()
                                    .frame(width: 45, height: 30)
                                    .cornerRadius(5)
                            }
                        }
                    }
                }
                .padding(EdgeInsets(top: 25, leading: 16, bottom: 16, trailing: 16))
                .background(Color("cardBlockColor"))
                .cornerRadius(20)
                .shadow(color: Color("shadow"), radius: 20, x: 0, y: 0)
            }
            .background(Color("backgroundColor"))
            .edgesIgnoringSafeArea(.all)
            .padding()
            
            
            
            
            VStack(){
                HStack(alignment: .center){ // цель/копилка
                    Image(systemName: "flag")
                        .resizable()
                        .frame(width: 23, height: 25)
                        .foregroundColor(.blue)
                        .padding(3)
                    
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading){
                            Text("157 out of 1299$") // счёт
                                .fontWeight(.bold)
                            Text("My first car")
                            
                        }
                    }
                    HStack{
                        
                        Spacer(minLength: 16)
                        
                        ProgressView(value: progress)
                            .padding(EdgeInsets(top: 20, leading: 10, bottom: 5, trailing: 0))
                            .frame(width: 120)
                        
                        Spacer(minLength: 16)
                    }
                }
                .frame(minWidth: 305, minHeight: 70)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 5, trailing: 16))
                .background(Color("cardBlockColor"))
                .cornerRadius(20)
                .shadow(color: Color("shadow"), radius: 20, x: 0, y: 0)
                .edgesIgnoringSafeArea(.all)
                
            }
            .background(Color("backgroundColor"))
            .edgesIgnoringSafeArea(.all)
            .padding()
            
            VStack{
                Button(action: { // создать копилку
                    self.presentSheet.toggle()
                }){
                    Text("Сreate a piggy bank")
                        .frame(width: 330, height: 25)
                }
                .frame(width: 330, height: 25)
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                .background(Color("colorButton"))
                .cornerRadius(15)
                .sheet(isPresented: $presentSheet) {
                    print("Sheet dismissed!")
                } content: {
                    SheetPiggyBankContent() // ui sheet
                    
                }
                .frame(minWidth: 305, maxHeight: 70)
                
            }
            .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
            
            HStack(alignment: .bottom){ // сердечко
                Text("сделано с")
                Button(action: {
                    self.heartClick.toggle()
                    if heartClick == false {
                        self.heart = "heart"
                    } else if heartClick == true {
                        self.heart = "heart.fill"
                    }
                }){
                    Image(systemName: heart)
                }
                Text("от Антона К.")
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SheetPiggyBankContent: View { // sheet
    @Environment(\.dismiss) var dismiss
    @State private var isActive = false
    @State var text = "" //TextField
    @State var amount = "" //TextField
    
    
    var body: some View {
        
        VStack(){ // sheet title
            Text("New piggy bank")
                .font(.title2)
                .padding()
            Spacer()
            
        VStack(alignment: .leading){ // input piggy bank name
            Text("Enter name of piggy bank:")
                .padding(EdgeInsets(top: 5, leading: 16, bottom: 0, trailing: 16))
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: 350, height: 30)
                    .cornerRadius(7)
                TextField("Name", text: $text)
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            }
        }
            
            VStack(alignment: .leading){ // input Amount
                Text("Enter the amount:")
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.gray)
                        .frame(width: 350, height: 30)
                        .cornerRadius(7)
                    TextField("Amount", text: $amount)
                        .keyboardType(.numberPad)
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                }
            }
            
            
            
            Spacer()
                
            
            Button(action: { // add button
                dismiss()
                
            }){
                Text("add")
                    .font(.title3)
                    .frame(width: 300, height: 25)
                    .foregroundColor(.black)
            }
                .frame(width: 300, height: 25)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                .background(Color("colorButton"))
                .cornerRadius(15)
            
            Button(action: { // close button
                dismiss() // close sheet
                
            }){
                Text("close")
                    .frame(width: 50, height: 25)
            }
                .foregroundColor(.red)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                .cornerRadius(15)
            Spacer()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider { // вывод программы на экран
    static var previews: some View {
        ContentView()
            .padding()
    }
}
