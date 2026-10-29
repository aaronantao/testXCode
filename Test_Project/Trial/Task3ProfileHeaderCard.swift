import SwiftUI

struct Task3ProfileHeaderCard: View {
    var body: some View {
        HStack(spacing: 16) {
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 95))
                Circle()
                    .fill(.blue)
                    .frame(width: 28, height: 28)
                    .overlay {
                        Image(systemName: "plus")
                            .font(.headline)
                            .bold()
                            .foregroundStyle(.white)
                    }
            }
            VStack(alignment: .leading, spacing: 10) {
                Text("Marry")
                    .font(.system(size: 21))
                    .bold()
                HStack(spacing: 20) {
                    VStack {
                        Text("4")
                            .font(.system(size: 17))
                            .bold()
                        Text("posts")
                    }
                    VStack {
                        Text("22")
                            .font(.system(size: 17))
                            .bold()
                        Text("followers")
                    }
                    VStack {
                        Text("38")
                            .font(.system(size: 17))
                            .bold()
                        Text("following")
                    }
                }
                .font(.system(size: 13))
            }
        }
        .position(x: 200, y: 65)
    }
}

#Preview {
    Task3ProfileHeaderCard()
}
