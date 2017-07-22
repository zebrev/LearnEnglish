//
//  ViewController.swift
//  LearnEnglish
//
//  Created by Rapax on 06.07.17.
//  Copyright © 2017 Rapax. All rights reserved.
//

import UIKit
import Alamofire
import RealmSwift
import SwiftyJSON


class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let realm = try! Realm()

        print(Realm.Configuration.defaultConfiguration.fileURL)

        //lookup
        let url = "https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key=dict.1.1.20170706T125047Z.a76f63339c33b1e2.320d6d120595cf7a8a51f80fe73294709baacdfe&lang=en-ru&text=time"
        
        //getLangs
        //let url2 = "https://dictionary.yandex.net/api/v1/dicservice.json/getLangs?key=dict.1.1.20170706T125047Z.a76f63339c33b1e2.320d6d120595cf7a8a51f80fe73294709baacdfe"

        
        //let cityName: String = ""
        
        //var arrWords : [String]
        
        Alamofire.request(url, method: .get).validate().responseJSON { response in

            
            switch response.result {
            case .success(let value):

                let json = JSON(value)

                let onlineWordsData = WordsData()
                
                //for element in json {
                //    print("Hello, \(element.0)!")
                //    if (element.0=="head") {continue}
                //}

                    //onlineWordsData.word = json["def"]["0"].stringValue
                    for (_, subJson) in json["def"] {
                        let tmp = DataTemp()
                        //tmp.t =  subJson["main"]["temp"].doubleValue
                        //tmp.icon = subJson["weather"][0]["icon"].stringValue
                        //tmp.date = subJson["dt_txt"].stringValue
                        tmp.text = subJson["tr"][0]["text"].stringValue
                        //print(tmp.text)
                        onlineWordsData.tempList.append(tmp)
                    }
                    print(onlineWordsData)
                

                //print("JSON: \(json["def"][0]["ts"].stringValue)")
                print("JSON: \(json["def"])")
//                let onlineWeather = WordsData()
//                onlineWeather.word = json["def"][0]["ts"].stringValue
                
                try! realm.write {
                    realm.add(onlineWordsData)
                }
                
            case .failure(let error):
                print(error)
            }
        }

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

