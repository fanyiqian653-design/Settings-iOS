//
//  SettingsModel.swift
//  Preferences
//
//  Settings Model
//

import SwiftUI

// MARK: - State Manager
class StateManager: ObservableObject {
    @Published var selection: SettingsType? = nil
    @Published var destination: AnyView? = nil
    @Published var path: [AnyHashable] = []
}

// MARK: - Settings Type
enum SettingsType: String, CaseIterable {
    case about
    case softwareUpdate
    case airDrop
    case continuity
    case pictureInPicture
    case carPlay
    case homeButton
    case autoFill
    case backgroundAppRefresh
    case dateAndTime
    case dictionary
    case fonts
    case keyboard
    case languageRegion
    case tvProvider
    case vpnDeviceManagement
    case legalRegulatory
    case transferReset
    case shutdown
    case accessibility
    case controlCenter
    case wallpaper
    case search
    case displayBrightness
    case camera
    case notifications
    case sound
    case focus
    case screenTime
    case touchID
    case privacySecurity
    case wallet
    case gameCenter
    case followUp
}

// MARK: - Combined Settings
let combinedSettings: [SettingsItem] = mainSettings + attentionSettings + securitySettings + serviceSettings + appsSettings + developerSettings

// MARK: - Settings Item
struct SettingsItem: Identifiable, Equatable {
    let id: String
    let type: SettingsType
    let color: Color
    let icon: String
    let destination: AnyView
    
    static func == (lhs: SettingsItem, rhs: SettingsItem) -> Bool {
        lhs.id == rhs.id
    }
}

// MARK: - Radio Settings
let radioSettings: [SettingsItem] = [
    SettingsItem(id: "Wi-Fi", type: .about, color: .blue, icon: "wifi", destination: AnyView(EmptyView())),
    SettingsItem(id: "Bluetooth", type: .about, color: .blue, icon: "bluetooth", destination: AnyView(EmptyView())),
    SettingsItem(id: "Cellular", type: .about, color: .green, icon: "antenna.radiowaves.left.and.right", destination: AnyView(EmptyView())),
    SettingsItem(id: "Personal Hotspot", type: .about, color: .green, icon: "personalhotspot", destination: AnyView(EmptyView()))
]

let phoneOnly: [String] = ["Cellular", "Personal Hotspot"]

// MARK: - Main Settings
let mainSettings: [SettingsItem] = [
    SettingsItem(id: "General", type: .about, color: .gray, icon: "gear", destination: AnyView(EmptyView())),
    SettingsItem(id: "Accessibility", type: .accessibility, color: .blue, icon: "accessibility", destination: AnyView(EmptyView())),
    SettingsItem(id: "Control Center", type: .controlCenter, color: .gray, icon: "switch.2", destination: AnyView(EmptyView())),
    SettingsItem(id: "Wallpaper", type: .wallpaper, color: .blue, icon: "photo", destination: AnyView(EmptyView())),
    SettingsItem(id: "Search", type: .search, color: .blue, icon: "magnifyingglass", destination: AnyView(EmptyView())),
    SettingsItem(id: "Display & Brightness", type: .displayBrightness, color: .blue, icon: "sun.max", destination: AnyView(EmptyView())),
    SettingsItem(id: "Camera", type: .camera, color: .gray, icon: "camera", destination: AnyView(EmptyView()))
]

let simulatorMainSettings: [SettingsItem] = [
    SettingsItem(id: "General", type: .about, color: .gray, icon: "gear", destination: AnyView(EmptyView())),
    SettingsItem(id: "Accessibility", type: .accessibility, color: .blue, icon: "accessibility", destination: AnyView(EmptyView())),
    SettingsItem(id: "Control Center", type: .controlCenter, color: .gray, icon: "switch.2", destination: AnyView(EmptyView())),
    SettingsItem(id: "Wallpaper", type: .wallpaper, color: .blue, icon: "photo", destination: AnyView(EmptyView())),
    SettingsItem(id: "Search", type: .search, color: .blue, icon: "magnifyingglass", destination: AnyView(EmptyView())),
    SettingsItem(id: "Display & Brightness", type: .displayBrightness, color: .blue, icon: "sun.max", destination: AnyView(EmptyView())),
    SettingsItem(id: "Camera", type: .camera, color: .gray, icon: "camera", destination: AnyView(EmptyView()))
]

// MARK: - Attention Settings
let attentionSettings: [SettingsItem] = [
    SettingsItem(id: "Notifications", type: .notifications, color: .red, icon: "bell", destination: AnyView(EmptyView())),
    SettingsItem(id: "Sound", type: .sound, color: .red, icon: "speaker.wave.2", destination: AnyView(EmptyView())),
    SettingsItem(id: "Focus", type: .focus, color: .indigo, icon: "moon", destination: AnyView(EmptyView())),
    SettingsItem(id: "Screen Time", type: .screenTime, color: .purple, icon: "hourglass", destination: AnyView(EmptyView()))
]

let attentionSimulatorSettings: [SettingsItem] = [
    SettingsItem(id: "Notifications", type: .notifications, color: .red, icon: "bell", destination: AnyView(EmptyView())),
    SettingsItem(id: "Sound", type: .sound, color: .red, icon: "speaker.wave.2", destination: AnyView(EmptyView())),
    SettingsItem(id: "Focus", type: .focus, color: .indigo, icon: "moon", destination: AnyView(EmptyView())),
    SettingsItem(id: "Screen Time", type: .screenTime, color: .purple, icon: "hourglass", destination: AnyView(EmptyView()))
]

// MARK: - Security Settings
let securitySettings: [SettingsItem] = [
    SettingsItem(id: "Touch ID & Passcode", type: .touchID, color: .green, icon: "touchid", destination: AnyView(EmptyView())),
    SettingsItem(id: "Privacy & Security", type: .privacySecurity, color: .blue, icon: "hand.raised", destination: AnyView(EmptyView()))
]

let simulatorSecuritySettings: [SettingsItem] = [
    SettingsItem(id: "Touch ID & Passcode", type: .touchID, color: .green, icon: "touchid", destination: AnyView(EmptyView())),
    SettingsItem(id: "Privacy & Security", type: .privacySecurity, color: .blue, icon: "hand.raised", destination: AnyView(EmptyView()))
]

// MARK: - Services Settings
let serviceSettings: [SettingsItem] = [
    SettingsItem(id: "Wallet & Apple Pay", type: .wallet, color: .black, icon: "wallet.pass", destination: AnyView(EmptyView())),
    SettingsItem(id: "Game Center", type: .gameCenter, color: .blue, icon: "gamecontroller", destination: AnyView(EmptyView()))
]

let simulatorServiceSettings: [SettingsItem] = [
    SettingsItem(id: "Wallet & Apple Pay", type: .wallet, color: .black, icon: "wallet.pass", destination: AnyView(EmptyView()))
]

// MARK: - Apps Settings
let appsSettings: [SettingsItem] = [
    SettingsItem(id: "Apps", type: .about, color: .blue, icon: "app.badge", destination: AnyView(EmptyView()))
]

// MARK: - Developer Settings
let developerSettings: [SettingsItem] = [
    SettingsItem(id: "Developer", type: .about, color: .gray, icon: "hammer", destination: AnyView(EmptyView()))
]

// MARK: - Capabilities
enum Capabilities {
    case actionButton
    case appleIntelligence
    case cellular
    case ethernet
    case faceID
    case isInternal
    case none
    case siri
    case sounds
    case soundsHaptics
    case touchID
    case vpn
}

// MARK: - Configuration
struct Configuration {
    static var developerMode: Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }
}
