//
//  FollowUpView.swift
//  Preferences
//
//  Settings > FollowUp
//

import SwiftUI
#if canImport(TipKit)
import TipKit
#endif

struct FollowUpView: View {
    // Variables
    @AppStorage("FollowUpDismissed") private var followUpDismissed = false
    @State private var opacity: Double = 0.0
    @State private var frameY: Double = 0.0
    @State private var showingFeedback = false
    @State private var path: [AnyHashable] = []
    
    var body: some View {
        CustomList(title: "FOLLOWUP_TITLE".localize(table: "FollowUp"), topPadding: true) {
            Section {
                Placard(title: "FOLLOWUP_PLACARD_TITLE".localize(table: "FollowUp"), color: .blue, icon: "person.crop.circle.badge.questionmark", description: "FOLLOWUP_PLACARD_SUBTITLE".localize(table: "FollowUp"), frameY: $frameY, opacity: $opacity)
            }
            
            #if canImport(TipKit)
            Section {
                ImageCreationTipView()
            }
            #endif
            
            Section {
                Button {
                    followUpDismissed = true
                } label: {
                    HStack {
                        Spacer()
                        Text("Done")
                            .fontWeight(.semibold)
                        Spacer()
                    }
                }
            }
            .listRowBackground(Color.clear)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("FOLLOWUP_TITLE", tableName: "FollowUp")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    .opacity(frameY < 50.0 ? opacity : 0)
            }
        }
    }
}

#Preview {
    NavigationStack {
        FollowUpView()
    }
}
