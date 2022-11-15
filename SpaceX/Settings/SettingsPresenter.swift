//
//  SettingsPresenter.swift
//  SpaceX
//
//  Created by Aleksei Omelchenko on 10/24/22.
//  
//

import Foundation

class SettingsPresenter: ViewToPresenterSettingsProtocol {
    func safeSettings() {
        interactor?.safeSettings()
    }
    
    // MARK: - Properties
    var view: PresenterToViewSettingsProtocol?
    var interactor: PresenterToInteractorSettingsProtocol?
    var router: PresenterToRouterSettingsProtocol?
    
    var params: ParametersModel? {
        get {
            interactor?.params
        }
    }
}

// MARK: - InteractorToPresenterLaunchesProtocol
extension SettingsPresenter: InteractorToPresenterSettingsProtocol {
}
