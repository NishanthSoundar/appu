//
//  ViewController.swift
//  prvn
//
//  Created by Nishanththarun on 28/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnact(_ sender: Any) {
        api()
    }
    func api (){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")
        let request = URLRequest(url: url!)
        let session = URLSession(configuration: .default)
        session.dataTask(with: request) { data, response, error in
            let nish = try? JSONSerialization.jsonObject(with: data!, options: .fragmentsAllowed)
            print(nish!)
            
        }.resume()
        
    }
    
}

