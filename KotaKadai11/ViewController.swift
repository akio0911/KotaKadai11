//
//  ViewController.swift
//  KotaKadai11
//
//  Created by 前田航汰 on 2022/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var prefectureTextLabel: UILabel!

    @IBAction func exitCancel(segue: UIStoryboardSegue) {
    }

    @IBAction func exitSelected(segue: UIStoryboardSegue) {
        guard let nextVC = segue.source as? PrefecturesViewController else {
            return
        }
        if let indexpathInt = nextVC.self.tableView.indexPathForSelectedRow?.row {
            prefectureTextLabel.text = nextVC.prefectures[indexpathInt]
        }
    }

}
