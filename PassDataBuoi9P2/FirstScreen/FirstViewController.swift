

import UIKit

class FirstViewController: UIViewController  {
   
    
    @IBOutlet weak var tenSachText: UITextField!
    @IBOutlet weak var tacGiaText: UITextField!
    @IBOutlet weak var ngaySuatText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* Viết chương trình nhập vào thông tin 1 cuốn sách (nên tạo struct/class)
          Button Nhập: Chuyển sang 1 màn hiển thị các thông tin đó ra.
          Button sửa: Chuyển 1 màn chỉnh sửa thông tin rồi cập nhật về màn 1 */
        view.backgroundColor = .brown
        
    }

    @IBAction func buttonNhap(_ sender: Any) {
        let secondVC = SecondViewController()
        secondVC.delegate = self
        secondVC.modalPresentationStyle = .fullScreen
        secondVC.tenSach = tenSachText.text ?? ""
        secondVC.tacGia = tacGiaText.text ?? ""
        secondVC.ngaySuatBan = ngaySuatText.text ?? ""
        present(secondVC, animated: true, completion: nil)
    }
}
extension FirstViewController: passDataDelegate {
    func UpdateSach(tensach: String, tacgia: String, ngaysuat: String) {
        tenSachText.text = tensach
        tacGiaText.text = tacgia
        ngaySuatText.text = ngaysuat
    }
    
}
