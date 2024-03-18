//
//  ContentView.swift
//  Wordle
//
//  Created by Manvendu Pathak on 18/03/24.
//

import SwiftUI

struct ContentView: View {
    private var boxColor: Color {
        guard let evalaution = evalaution else {
            return
        }
        return evalaution.color
    }
    let letter: Character?
    let evalaution: LetterEvaluation?
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 4)
                .aspectRatio(1, contentMode: .fit)
            if let letter = letter {
                Text(String(letter))
                    .font(.system(size: 36, weight: .bold, design: .rounded))
            }
        }
    }
}

enum LetterEvaluation {
    case notIncluded // this means that it is not present in the solution of the word
    case inlcuded // this means that it is included, but in wrong position
    case match // this means that the word is included and in right position
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


private extension LetterEvaluation {
    var color: Color{
        switch self {
        case .notIncluded: // if the case is not included then the color is gray.
            return Color(.systemGray5)
            
        case .inlcuded: // if the case is inlcuded then the color is yellow
            return Color(.systemYellow)
            
        case .match: // is the case is match then the color is green
            return Color(.systemGreen)
        }
       
    }
}
