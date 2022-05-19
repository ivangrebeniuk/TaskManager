//
//  AboutViewController.swift
//  TaskManager
//
//  Created by Иван Гребенюк on 19.05.2022.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var buildLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBuildAndVersion()
    }
    
    func setUpBuildAndVersion() {
        guard let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
              let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String else { return }
        
        buildLabel.text = "Build: \(build)"
        versionLabel.text = "Version: \(version)"
    }

}
