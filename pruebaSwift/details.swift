

//import SwiftUI
//
//struct ContentView: View {
//
//    var body: some View {
//
//
//        NavigationView{
//            Home()
//            .navigationBarTitle("",displayMode: .inline)
//            .navigationBarHidden(true)
//        }
//    }
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//} //>
//
//struct Home : View {
//
//
//    @EnvironmentObject var data : transDatas
//
//    var body : some View{
//
//        ZStack{
//
//            Color("bg").edgesIgnoringSafeArea(.top)
//
//            NavigationLink(destination: ChatView(), isActive: $data.show) {
//
//                Text("")
//            }
//            VStack{
//
//                topView()
//            }
//        }
//    }
//}
//
//struct topView : View {
//
//    var body : some View{
//
//        VStack{
//
//            HStack(spacing: 15){
//
//                Text("Denayed").fontWeight(.heavy).font(.system(size: 23))
//
//                Spacer()
//
//                Button(action: {
//
//                }) {
//
//                    Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20)
//                }
//
//                Button(action: {
//
//                }) {
//
//                    Image("menu").resizable().frame(width: 20, height: 20)
//                }
//
//            }
//            .foregroundColor(Color.white)
//            .padding()
//
//            GeometryReader{_ in
//
//                MainView().clipShape(Rounded())
//            }
//        }
//
//
//    }
//}
//
//struct MainView : View {
//
//    @EnvironmentObject var data : transDatas
//
//    var body : some View{
//
//        List(transs){i in
//
//            cellView(name: i.name, trans: i.trans,  transs: i.transs).onTapGesture {
//
//                self.data.selectedData = i
//                self.data.show.toggle()
//            }
//        }
//    }
//}
//
//struct cellView : View {
//    var name : String
//    var trans : String
//    var transs : String
//
//    var body : some View{
//
//        HStack(spacing: 15){
//
//
//            VStack(alignment:.leading,spacing: 5){
//
//                Text(name)
//                Text(trans).lineLimit(2)
//            }
//
//            Spacer()
//
//            VStack(spacing: 10){
//
//
//                if transs != ""{
//
//                    Text(transs).padding(8).background(Color("bg")).foregroundColor(.white).clipShape(Circle())
//                }
//                else{
//
//                    Spacer()
//                }
//            }
//
//        }.padding(9)
//    }
//}
//
//struct Rounded : Shape {
//
//    func path(in rect: CGRect) -> Path {
//
//        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft, cornerRadii: CGSize(width: 55, height: 55))
//        return Path(path.cgPath)
//    }
//}
//
//
//struct transType : Identifiable {
//
//    var id : Int
//    var trans : String
//    var time : String
//    var transs : String
//    var name : String
//}
//
//// sample data....
//
//var transs : [transType] = [
//
//    transType(id: 0, trans: "Esta es una prueba de  vanessaa", time: "14:32", transs: "2", name: "Vanessa Cendales")
//
//]
//
//
//
//
//struct ChatView : View {
//    var body : some View{
//
//        ZStack{
//
//            Color("bg").edgesIgnoringSafeArea(.top)
//
//            VStack(spacing: 0){
//
//                chatTopview()
//                GeometryReader{_ in
//
//                    chatList()
//                }
//
//            }.navigationBarTitle("")
//            .navigationBarHidden(true)
//        }
//    }
//}
//struct chatTopview : View {
//
//    @EnvironmentObject var data : transDatas
//
//    var body : some View{
//
//
//        HStack(spacing : 15){
//
//            Button(action: {
//
//                self.data.show.toggle()
//
//            }) {
//
//                Image(systemName: "control").font(.title).rotationEffect(.init(degrees: -90))
//            }
//
//            Spacer()
//
//            VStack(spacing: 5){
//
//                Text(data.selectedData.name).fontWeight(.heavy)
//
//            }.offset(x: 25)
//
//
//            Spacer()
//
//
//            }.foregroundColor(.white)
//            .padding()
//    }
//}
//
//
//
//struct chatList : View {
//
//    var body : some View{
//
//        ScrollView(.vertical, showsIndicators: false) {
//
//            VStack{
//
//                ForEach(Eachtrans){i in
//
//                    chatCell(data: i)
//                }
//            }
//
//        }.padding(.horizontal, 15)
//        .background(Color.white)
//        .clipShape(Rounded())
//
//    }
//}
//
//struct chatCell : View {
//
//    var data : transdataType
//    var body : some View{
//
//        HStack{
//            Spacer()
//
//                Text(data.trans)
//                    .padding()
//
//
//        }.padding(data.mytrans ? .leading : .trailing, 55)
//        .padding(.vertical,10)
//    }
//}
//
//struct transdataType : Identifiable {
//    var id : Int
//    var trans : String
//    var mytrans : Bool
//}

// i have already implemented a sample data model.....

var Eachtrans = [
    transdataType(id: 0, trans: "descripcion de la transaccion", mytrans: false)
]


class transDatas : ObservableObject{
    
    @Published var show : Bool = false
    @Published var selectedData : transType = .init(id: -1, trans: "", time: "", transs: "", name: "")
}
