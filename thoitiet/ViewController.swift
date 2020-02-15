//
//  ViewController.swift
//  thoitiet
//
//  Created by Dương chãng on 2/14/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bigVIew: UIView = {
        let bigView = UIView()
        bigView.translatesAutoresizingMaskIntoConstraints = false
        // bigView.frame = UIView( frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3))
        bigView.backgroundColor = .black
        return bigView
    }()
    let lable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        //lable.backgroundColor = .blue
        lable.text = "Ha Noi"
        lable.textAlignment = .center
        lable.textColor = .red
        lable.font = UIFont.systemFont(ofSize: 30)
        return lable
    }()
    let lable2: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
       // lable.backgroundColor = .blue
        lable.text = "Cloudy"
        lable.textColor = .red
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 20)
        return lable
    }()
    let lable3: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        //lable.backgroundColor = .blue
        lable.text = "24º"
        lable.textColor = .red
        lable.textAlignment = .center
        lable.font = UIFont.systemFont(ofSize: 80)
        return lable
    }()
    
    let Thulable: UILabel = {
        let Thulable = UILabel()
        Thulable.translatesAutoresizingMaskIntoConstraints = false
        Thulable.text = "Thursday"
        Thulable.font = UIFont.systemFont(ofSize: 20)
        Thulable.textColor = .red
        //Thulable.backgroundColor = .blue
        return Thulable
    }()
    let Ngaylable: UILabel = {
        let Thulable = UILabel()
        Thulable.translatesAutoresizingMaskIntoConstraints = false
        Thulable.text = "ToDay"
        Thulable.font = UIFont.systemFont(ofSize: 20)
        Thulable.textColor = .red
        //Thulable.backgroundColor = .blue
        return Thulable
    }()
    let solable: UILabel = {
        let Thulable = UILabel()
        Thulable.translatesAutoresizingMaskIntoConstraints = false
        Thulable.text = "26"
        Thulable.font  = UIFont.systemFont(ofSize: 20)
        Thulable.textColor = .red
        //Thulable.backgroundColor = .blue
        return Thulable
    }()
    let so2lable: UILabel = {
        let Thulable = UILabel()
        Thulable.translatesAutoresizingMaskIntoConstraints = false
        Thulable.text = "21º"
        Thulable.font  = UIFont.systemFont(ofSize: 20)
        Thulable.textColor = .red
        //Thulable.backgroundColor = .blue
        return Thulable
    }()
    
    let CollectionView: UICollectionView = {
        let flowlayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
       
        collectionView.backgroundColor = .black
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
        
    }()
    let TableView: UITableView = {
        let TaleView = UITableView()
        TaleView.backgroundColor = .black
        TaleView.translatesAutoresizingMaskIntoConstraints = false
        return TaleView
    }()
    
    var noidung: [weather] = []
    
    var noidung2: [weather2] = []
    
    let idcell1: String = "Cell"
    let idcell2: String = "Cell2"
    
    let idcell3: String = "Cell3"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionView.backgroundColor = .clear
        bigVIew.backgroundColor = .clear
        TableView.backgroundColor = .clear
        setuplayout()
        setupdata1()
        setupdata2()
        TableView.delegate = self
        TableView.dataSource = self
        // dăng ký cell với file xib
        TableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: idcell1)
        TableView.register(TableViewCell2.self, forCellReuseIdentifier: idcell2)
        CollectionView.delegate = self
        CollectionView.dataSource = self
        CollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: idcell3)
        
        
    }
    func setuplayout() {
        view.addSubview(bigVIew)
        
        bigVIew.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        bigVIew.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        bigVIew.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        bigVIew.bottomAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height / 3).isActive = true
        
        bigVIew.addSubview(lable)
        lable.topAnchor.constraint(equalTo: bigVIew.topAnchor, constant: 50).isActive = true
        lable.leadingAnchor.constraint(equalTo: bigVIew.leadingAnchor, constant: 120).isActive = true
        lable.heightAnchor.constraint(equalToConstant: 40).isActive = true
        lable.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        bigVIew.addSubview(lable2)
        lable2.topAnchor.constraint(equalTo: lable.bottomAnchor, constant: 5).isActive = true
        lable2.leadingAnchor.constraint(equalTo: lable.leadingAnchor, constant: 50).isActive = true
        lable2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lable2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        bigVIew.addSubview(lable3)
        lable3.topAnchor.constraint(equalTo: lable2.bottomAnchor, constant: 10).isActive = true
        lable3.leadingAnchor.constraint(equalTo: lable.leadingAnchor, constant: 0).isActive = true
        lable3.heightAnchor.constraint(equalToConstant: 100).isActive = true
        lable3.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        bigVIew.addSubview(Thulable)
        bigVIew.addSubview(Ngaylable)
        bigVIew.addSubview(solable)
        bigVIew.addSubview(so2lable)
        
        Thulable.topAnchor.constraint(equalTo: lable3.bottomAnchor, constant: 40).isActive = true
        Thulable.leadingAnchor.constraint(equalTo: lable3.leadingAnchor, constant: -100).isActive = true
        Thulable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        Thulable.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        Ngaylable.topAnchor.constraint(equalTo: lable3.bottomAnchor, constant: 40).isActive = true
        Ngaylable.leadingAnchor.constraint(equalTo: Thulable.trailingAnchor, constant: 20).isActive = true
        Ngaylable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        Ngaylable.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        so2lable.topAnchor.constraint(equalTo: lable3.bottomAnchor, constant: 40).isActive = true
        so2lable.trailingAnchor.constraint(equalTo: lable3.trailingAnchor, constant: 90).isActive = true
        so2lable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        so2lable.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        solable.topAnchor.constraint(equalTo: lable3.bottomAnchor, constant: 40).isActive = true
        solable.trailingAnchor.constraint(equalTo: so2lable.leadingAnchor, constant: -20).isActive = true
        solable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        solable.widthAnchor.constraint(equalToConstant: 30 ).isActive = true
        
        
        view.addSubview(CollectionView)
        CollectionView.topAnchor.constraint(equalTo: bigVIew.bottomAnchor, constant: 3).isActive = true
        CollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        CollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        CollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:  -450).isActive = true
        
        view.addSubview(TableView)
        TableView.topAnchor.constraint(equalTo: CollectionView.bottomAnchor, constant: 3).isActive = true
        TableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        TableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        TableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    
    
    func setupdata1() {
        let noidung1 = weather(Tenthu: "Friday", anh: "1", DoC: "30", ngay: "21º")
        let noidung2 = weather(Tenthu: "Satueday", anh: "2", DoC: "20", ngay: "22º")
        let noidung3 = weather(Tenthu: "Sunday", anh: "3", DoC: "32", ngay: "30º")
        let noidung4 = weather(Tenthu: "Monday", anh: "4", DoC: "29", ngay: "27º")
        let noidung5 = weather(Tenthu: "Wednesday", anh: "3", DoC: "22", ngay: "29º")
        let noidung6 = weather(Tenthu: "Thursday", anh: "1", DoC: "30", ngay: "24º")
        let noidung7 = weather(Tenthu: "Fiday", anh: "4", DoC: "31", ngay: "25º")
        let noidung8 = weather(Tenthu: "Monday", anh: "3", DoC: "33", ngay: "26º")
        let noidung9 = weather(Tenthu: "Thurday", anh: "1", DoC: "30", ngay: "27º")
        let noidung10 = weather(Tenthu: "Friday", anh: "2", DoC: "34", ngay: "25º")
        
        noidung = [noidung1, noidung2, noidung3, noidung4, noidung5, noidung6, noidung7, noidung8, noidung9, noidung10]
    }
    
    func setupdata2() {
        let dubao1 = weather2(Thu: "Monday", anh2: "1", nhietdo: "30º")
        let dubao2 = weather2(Thu: "Friday", anh2: "2", nhietdo: "22º")
        let dubao3 = weather2(Thu: "ThursDay", anh2: "4", nhietdo: "34º")
        let dubao4 = weather2(Thu: "Sunday", anh2: "3", nhietdo: "33º")
        let dubao5 = weather2(Thu: "Thursday", anh2: "2", nhietdo: "32º")
        let dubao6 = weather2(Thu: "Monday", anh2: "4", nhietdo: "31º")
        let dubao7 = weather2(Thu: "Friday", anh2: "1", nhietdo: "20º")
        let dubao8 = weather2(Thu: "Satueday", anh2: "4", nhietdo: "29º")
        let dubao9 = weather2(Thu: "Monday", anh2: "1", nhietdo: "30º")
        noidung2 = [dubao1, dubao2, dubao3, dubao4, dubao5, dubao6, dubao7, dubao8, dubao9]
          if let flowLayout = CollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
               flowLayout.scrollDirection = .horizontal
           }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return noidung.count
        }else{
            return 0
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: idcell1, for: indexPath) as! TableViewCell
            cell.thoitiet = noidung[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: idcell1, for: indexPath) as! TableViewCell2
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            noidung.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 9
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noidung2.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idcell3, for: indexPath) as! CollectionViewCell
        cell.thoitiet2 = noidung2[indexPath.row]
        return cell
    }
    // set kich thược item
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 100, height: 150)
      }
    
      // hàm trả về khoảng cách giữa hai hàng
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 0
      }

      // hàm trả về khoảng cách giữa 2 item (tương tự 2 cột)
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          return 0
      }
    }


