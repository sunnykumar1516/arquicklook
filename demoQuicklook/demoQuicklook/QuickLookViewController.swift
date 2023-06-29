//
//  QuickLookViewController.swift
//  demoQuicklook
//
//  Created by sunny  kumar on 28/06/23.
//

import UIKit
import QuickLook
import ARKit

class QuickLookViewController: UIViewController, QLPreviewControllerDelegate, QLPreviewControllerDataSource
{
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
    
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        
        let url = Bundle.main.url(
            forResource: "model",
            withExtension: "reality")!
        
        let preview = ARQuickLookPreviewItem(fileAt: url) // Local file URL

        return preview
    }
    
    func presentARQuickLook() {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextView(_ sender: Any) {
        presentARQuickLook()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
