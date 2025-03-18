//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Melek on 11.03.2025.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTiklandi(indexPath:IndexPath)
}

class UrunlerHucre: UITableViewCell {
    
    
    @IBOutlet weak var imageViewUrun: UIImageView!
    @IBOutlet weak var labelUrunAd: UILabel!
    
    
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    
    @IBOutlet weak var hucreArkaplan: UIView!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        
         hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
    }
    
}

