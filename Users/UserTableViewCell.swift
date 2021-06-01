//
//  UserTableViewCell.swift
//  Users
//
//  Created on 01.06.2021.
//

import UIKit

// Ячейка таблицы, которая отображает нашего пользователя
class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
