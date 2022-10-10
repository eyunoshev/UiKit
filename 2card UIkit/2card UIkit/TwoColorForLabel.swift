//
//  TwoColorForLabel.swift
//  2card UIkit
//
//  Created by dunice on 05.10.2022.
//

import UIKit

class TwoColorForLabel: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        changeLabel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func changeLabel(){
        
        let myString = myLabel.text
        let myAttributedText = NSMutableAttributedString(string: myString!)
        myAttributedText.addAttribute(.foregroundColor,
                                      value: UIColor.systemBlue,
                                      range: NSRange(location: 23 , length: 14))
        myLabel.attributedText = myAttributedText
    }

}
