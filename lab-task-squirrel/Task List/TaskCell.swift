//
//  TaskCell.swift
//  photo-Hunt
//
//  Created by Dana Yerlan on 03/19/23.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var completedImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    func configure(with task: Task) {
        titleLabel.text = task.title
        titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: task.isComplete ? "circle.fill" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = .systemRed
    }

}
