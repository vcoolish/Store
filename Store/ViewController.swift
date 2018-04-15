//
//  ViewController.swift
//  Store
//
//  Created by Viacheslav Kulish on 09.04.2018.
//  Copyright © 2018 vcoolish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    var userNames = ["Настройте сервер"]
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return userNames[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return userNames.count
    }
    @IBOutlet weak var userPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "http://138.201.225.55:38080/employees/get/all"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            guard let data = data else { return }
            do {
                let articlesData = try JSONDecoder().decode([User].self, from: data)
                
                DispatchQueue.main.async {
                    var usersArray: Array<String> = Array<String>()
                    for i in 0...articlesData.count-1{
                        usersArray.append(articlesData[i].getLogin())
                    }
                    self.userNames = usersArray
                    print(usersArray)
                }
                
            } catch let jsonError {
                print(jsonError)
            }
            self.userPicker.reloadAllComponents()
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func settingButton(_ sender: UIButton) {
        
        let setServer = UIAlertController(title: "Настройки сервера", message: nil, preferredStyle: .alert)
        let saveSet = UIAlertAction(title: "Сохранить", style: .default) { (action) in
        }
        let cancelSet = UIAlertAction(title: "Отменить", style: .cancel) { (action) in }
        
        setServer.addTextField{ (textField) in
            textField.placeholder = "URL адресс"
        }
        setServer.addTextField{ (textField) in
            textField.placeholder = "Логин"
        }
        setServer.addTextField{ (textField) in
            textField.placeholder = "Пароль"
        }
        setServer.addAction(saveSet)
        setServer.addAction(cancelSet)
        self.present(setServer, animated: true){
            print("ok")
        }
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        print("ok")
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
}

