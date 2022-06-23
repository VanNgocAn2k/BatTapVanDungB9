

import UIKit
protocol passDataDelegate: AnyObject {
    func UpdateSach(tensach: String, tacgia: String, ngaysuat: String)
}
class SecondViewController: UIViewController {
    @IBOutlet weak var tenSachText: UITextField!
    @IBOutlet weak var tacGiaText: UITextField!
    @IBOutlet weak var ngaySuatText: UITextField!
    
    weak var delegate: passDataDelegate?
    
    var tenSach: String = ""
    var tacGia: String = ""
    var ngaySuatBan: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        tenSachText.text = tenSach
        tacGiaText.text = tacGia
        ngaySuatText.text = ngaySuatBan
    }

    @IBAction func buttonSua(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        tenSachText.text != tenSach
        tacGiaText.text != tacGia
        ngaySuatText.text != ngaySuatBan
        delegate?.UpdateSach(tensach: tenSachText.text!, tacgia: tacGiaText.text!, ngaysuat: ngaySuatText.text!)
    }
    

}
