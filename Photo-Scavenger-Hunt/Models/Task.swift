//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
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
            Task(title: "Your favorite local restaurant",
                 description: "Where do you go to get delicious food?"),
            Task(title: "Your favorite local caffe",
                 description: "Where do you go to get Caffeine?"),
            Task(title: "You favorite go-to lunch place",
                 description: "where do you go to get lunch?"),
            Task(title: "You favorite hicking spot",
            description: "Where do you to be with nature?")
        ]
    }
}
