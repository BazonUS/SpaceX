//
//  LaunchesPresenter.swift
//  SpaceX
//
//  Created by Aleksei Omelchenko on 10/22/22.
//  
//

import Foundation

class LaunchesPresenter: ViewToPresenterLaunchesProtocol {

    // MARK: - Properties
    var view: PresenterToViewLaunchesProtocol?
    var interactor: PresenterToInteractorLaunchesProtocol?
    var router: PresenterToRouterLaunchesProtocol?
    
    func viewDidLoad() {
        interactor?.requestData()
    }
}

// MARK: - InteractorToPresenterLaunchesProtocol
extension LaunchesPresenter: InteractorToPresenterLaunchesProtocol {
    func didFetchSuccess(model: [Launches]?) {
        view?.succes(model: model)
    }
    
    func didFetchFailure(error: Error) {
        view?.failure(error: error)
    }
}
