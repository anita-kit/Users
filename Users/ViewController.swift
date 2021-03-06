//
//  ViewController.swift
//  Users
//
//  Created on 01.06.2021.
//

import UIKit

struct User {
    let name: String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Массив наших пользователей, которых мы хотим отобразить
    var users = [User(name: "Claudia"), User(name: "Immanuel")]
    
    // Наша табличка, которая отображает пользователей
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    // Функция которая говорит таблице сколько строк показывать
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Показываем столько строк, сколько у нас пользователей
        return users.count
    }
    
    // Функция которая на каждую строку таблицы отдает ячейку
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Достаем ячейку из таблицы по её идентификатору
        // А потом приводим её к типу ячейки нашего пользователя
        let cell = tableView.dequeueReusableCell(withIdentifier: "User Cell", for: indexPath) as! UserTableViewCell
        // Устанавливаем имя пользователя в лейбл
        cell.usernameLabel.text = users[indexPath.row].name
        return cell
    }
    
}

