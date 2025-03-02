//
//  DLInputFieldComponent.swift
//  CraftKitExample
//
//  Created by DynamicLayers on 15/11/2023.
//

import SwiftUI
import Dynamiclayer

struct DLInputFieldComponent: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    
    @State var lg_text1 = ""
    @State var lg_type1: DLInputFieldType = .none
    @State var lg_text2 = ""
    @State var lg_type2: DLInputFieldType = .warning
    @State var lg_text3 = ""
    @State var lg_type3: DLInputFieldType = .error
    @State var lg_text4 = ""
    @State var lg_type4: DLInputFieldType = .success
    @State var lg_text5 = ""
    @State var lg_type5: DLInputFieldType = .icon(icon: nil, isTrailing: true)
    @State var lg_text6 = ""
    @State var lg_type6: DLInputFieldType = .icon(icon: nil, isTrailing: false)
    
    @State var md_text1 = ""
    @State var md_type1: DLInputFieldType = .none
    @State var md_text2 = ""
    @State var md_type2: DLInputFieldType = .warning
    @State var md_text3 = ""
    @State var md_type3: DLInputFieldType = .error
    @State var md_text4 = ""
    @State var md_type4: DLInputFieldType = .success
    @State var md_text5 = ""
    @State var md_type5: DLInputFieldType = .icon(icon: nil, isTrailing: true)
    @State var md_text6 = ""
    @State var md_type6: DLInputFieldType = .icon(icon: nil, isTrailing: false)
    
    @State var sm_text1 = ""
    @State var sm_type1: DLInputFieldType = .none
    @State var sm_text2 = ""
    @State var sm_type2: DLInputFieldType = .warning
    @State var sm_text3 = ""
    @State var sm_type3: DLInputFieldType = .error
    @State var sm_text4 = ""
    @State var sm_type4: DLInputFieldType = .success
    @State var sm_text5 = ""
    @State var sm_type5: DLInputFieldType = .icon(icon: nil, isTrailing: true)
    @State var sm_text6 = ""
    @State var sm_type6: DLInputFieldType = .icon(icon: nil, isTrailing: false)
    
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Input Field",
                iconLeft: "ic_ChevronLeft",
                iconRight: "ic_DarkMode"
            ) {
                /// - Leading icon action
                dismiss()
            } iconRightAction: {
                enableDarkMode.toggle()
            }
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 32) {
                    VStack(alignment: .leading, spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Large Input Field")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(spacing: Spacing.p_16.rawValue) {
                            DLInputField(
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text1,
                                type: $lg_type1,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text2,
                                type: $lg_type2,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text3,
                                type: $lg_type3,
                                errorString: .constant("* Description")
                            )
                            
                            DLInputField(
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text4,
                                type: $lg_type4,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text5,
                                type: $lg_type5,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text6,
                                type: $lg_type6,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                state: .disabled,
                                size: .lg,
                                placeholder: "Input Field",
                                text: $lg_text1,
                                type: $lg_type1,
                                errorString: .constant("")
                            )
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Medium Input Field")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(spacing: Spacing.p_16.rawValue) {
                            DLInputField(
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text1,
                                type: $md_type1,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text2,
                                type: $md_type2,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text3,
                                type: $md_type3,
                                errorString: .constant("* Description")
                            )
                            
                            DLInputField(
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text4,
                                type: $md_type4,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text5,
                                type: $md_type5,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text6,
                                type: $md_type6,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                state: .disabled,
                                size: .md,
                                placeholder: "Input Field",
                                text: $md_text1,
                                type: $md_type1,
                                errorString: .constant("")
                            )
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Small Input Field")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(spacing: Spacing.p_16.rawValue) {
                            DLInputField(
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text1,
                                type: $sm_type1,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text2,
                                type: $sm_type2,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text3,
                                type: $sm_type3,
                                errorString: .constant("* Description")
                            )
                            
                            DLInputField(
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text4,
                                type: $sm_type4,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text5,
                                type: $sm_type5,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text6,
                                type: $sm_type6,
                                errorString: .constant("")
                            )
                            
                            DLInputField(
                                state: .disabled,
                                size: .sm,
                                placeholder: "Input Field",
                                text: $sm_text1,
                                type: $sm_type1,
                                errorString: .constant("")
                            )
                        }
                    }
                    
                    Spacer()
                }
                .padding(.vertical, Spacing.p_32.rawValue)
                .padding(.horizontal, Spacing.p_16.rawValue)
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        .toolbar(.hidden)
    }
}

struct CKTextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        DLInputFieldComponent()
    }
}
