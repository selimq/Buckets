//
//  OnBoardView.swift
//  Buckets
//
//  Created by Selim Doğan on 29.11.2022.
//

import SwiftUI

struct OnBoardView: View {
    @State private var currentSlide = OnBoardSlideModel.items[0].id

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Slider(currentSlide: $currentSlide)
                Spacer()
                Indicators(currentSlide: $currentSlide)
                GetStartedButton()
                Spacer().frame(height: geometry.dh(height: 0.02))
            }
        }.padding(.paddingAll16)
    }
}

struct IndicatorRectangle: View {
    var onTap: (() -> ())?
    var width: Double

    var body: some View {
        Button(action: onTap ?? {}, label: {
            Rectangle().cornerRadius(8).frame(width: width)
        })
    }
}

private struct SliderCard: View {
    var item: OnBoardSlideModel

    var body: some View {
        VStack {
            Image(item.image).resizable()
            Text(item.titleKey.locale())
                .font(.title).multilineTextAlignment(.center)
        }
    }
}

private struct GetStartedButton: View {
    var body: some View {
        CustomButton(onTap: {}, title: LocaleKeys.Buttons.getStarted.rawValue).padding(.paddingAll8)
    }
}

private struct Indicators: View {
    @Binding var currentSlide: UUID
    var body: some View {
        HStack {
            ForEach(OnBoardSlideModel.items) { c in
                if c.id == currentSlide {
                    IndicatorRectangle(width: 20).foregroundColor(Color.indicatorGray)
                }
                else {
                    IndicatorRectangle(onTap: {
                        currentSlide = c.id
                    }, width: 10).foregroundColor(Color.notSelectedIndicatorGray)
                }
            }
        }.frame(height: 7)
    }
}

private struct Slider: View {
    @Binding var currentSlide: UUID
    var body: some View {
        GeometryReader { geometry in
            TabView(
                selection: $currentSlide,
                content: {
                    ForEach(OnBoardSlideModel.items, id: \.id) { b in
                        VStack {
                            SliderCard(item: b).tag(b.id)
                        }

                    }.frame(height: geometry.dh(height: 0.6))

                }).tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
