//
//  Task.swift
//  photo-Hunt
//
//  Created by Dana Yerlan on 03/19/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Buy groceries",
                 description: "Go to Dom's Kitchen Market, and buy organic vegetables and fruits."),
            Task(title: "Finish Codepath project and upload to GitHub",
                 description: "Finish Photo Hunter app"),
            Task(title: "Prepare Lunch",
                 description: "Prepare 'Lagman' dish. Lagman is a dish from Central Asia with roots in Xinjiang, a northwestern region of China. The name translates to pulled noodles or hand-stretched noodles, denoting the main feature of the dish.")
        ]
    }
}
