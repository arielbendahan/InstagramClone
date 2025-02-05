import SwiftUI

struct CreatePostScreen: View {
    let images: [String] = [
        "image1", "image2", "image3",
        "image4", "image5", "image6",
        "image7", "image8", "image9"
    ]
    
    let columns =
    [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                    .padding(.trailing)
                Text("New Post")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
                Button(action: {}) {
                    Text("Next")
                        .font(.headline)
                }
            }
            .padding(.horizontal)
    
            Image("image1")
                .resizable()
                .scaledToFit()
                .padding(.bottom)
            
            HStack {
                Text("Recents")
                    .font(.system(size: 25))
                    .bold()
                Image(systemName: "chevron.down")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                Spacer()
                
                HStack {
                    Button(action: {}) {
                        Image(systemName: "square.on.square")
                            .foregroundColor(.black)
                        Text("Select Multiple")
                            .foregroundColor(.black)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color(.systemGray5)))
                }
                
                Button(action: {}) {
                    Image(systemName: "camera")
                        .foregroundColor(.black)
                        .padding()
                        .background(Circle().fill(Color(.systemGray5)))
                        .frame(width: 40, height: 40)
                }
            }
            .padding(.horizontal)
            

            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 2) {
                    ForEach(images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 3, height: 120)
                            .clipped()
                    }
                }
            }
            .padding(.horizontal, 2)
            
            Spacer()
            

            HStack(spacing: 20) {
                Text("Post")
                    .foregroundColor(.black)
                    .bold()
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                
                Text("Story")
                    .foregroundColor(.black)
                    .bold()
                
                Text("Reel")
                    .foregroundColor(.black)
                    .bold()
                
                Text("Live")
                    .foregroundColor(.black)
                    .bold()
            }
            .padding(.vertical, 10)
            .frame(width: 300)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray5)))
            .padding(.horizontal, 8)
            .padding(.bottom, 10)
        }
    }
}

struct CreatePostScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostScreen()
    }
}
