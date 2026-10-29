import SwiftUI
import Playgrounds

struct GaugeGradient : View {
    var currentSteps: Double = 400
    var minimumSteps: Double = 0
    var maximumSteps: Double = 1000
    
    var gradient: Gradient = Gradient(colors:
                                        [.red, .orange, .yellow, .green])
    let rowHeight : CGFloat = 80
    
    var body: some View {
//        Gauge(value: <V>,
//              in: ClosedRange<V>, //
//              label: () -> Label, //label is what the progess bar is implying
//        currentValueLabel: () -> CurrentValueLabel
//        minimumValueLabel: () -> BoundsLabel, //1
//        maximumValueLabel: () -> BoundsLabel) //100 (if range is 1-100)
//        Gauge(value: 10,
//              in: ClosedRange<V>, //
//              label: () -> Label, //label is what the progess bar is implying
//        currentValueLabel: () -> CurrentValueLabel
//        minimumValueLabel: () -> BoundsLabel, //1
//        maximumValueLabel: () -> BoundsLabel) //100 (if range is 1-100)
//
        //Gaugestyles
        //.automatic
        VStack(spacing: 0) {
            HStack{
                Text("Gauge Style")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Visual")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            Divider()
            
            //.linearCapacity
            HStack(alignment: .center) {
                Text(".linerCapacity")
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...100) { Text ("Steps")}
                    .gaugeStyle(.linearCapacity)
                    .tint(gradient)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            Divider()
            
            //.accessoryLinear
            HStack(alignment: .center) {
                Text(".accessoryLinear")
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000) { Text ("Boots")}
                    .gaugeStyle(.accessoryLinear)
                    .tint(gradient)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            Divider()
            
            //.accessoryLinearCapacity
            HStack(alignment: .center) {
                Text(".accessoryLinearCapacity")
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000) { Text ("Boop")}
                    .gaugeStyle(.accessoryLinearCapacity)
                    .tint(gradient)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            Divider()
            
            //.accessoryCircular
            HStack(alignment: .center) {
                Text(".accessoryCircular")
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000) { Text ("100")}
                    .gaugeStyle(.accessoryCircular)
                    .tint(gradient)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            Divider()
            
            //.accessoryCircularCapacity
            HStack(alignment: .center) {
                Text(".accessoryCircularCapacity")
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000) { Text ("O")}
                    .gaugeStyle(.accessoryCircularCapacity)
                    .tint(gradient)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            Divider()
        }
    }
}

#Preview {
    GaugeGradient()
}
