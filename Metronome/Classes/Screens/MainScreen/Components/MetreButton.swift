import UIKit

class MetreButton: UIButton {
    init(title: String) {
        super.init(frame: CGRect.zero)
        
        titleLabel?.font = UIFont.metreButtonsFont()
        
        setTitle(title, forState: .Normal)
        setTitleColor(UIColor.metreButtonNormalStateColor(), forState: .Normal)
        setTitleColor(UIColor.metreButtonSelectedStateColor(), forState: .Selected)
        setBackgroundImage(UIImage(asset: .Metre_btn), forState: .Normal)
        
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(MetreButton.didLongPress))
        addGestureRecognizer(longPressGestureRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didLongPress() {
        sendActionsForControlEvents(.LongTouchDown)
    }
}

extension UIControlEvents {
    public static var LongTouchDown = UIControlEvents(rawValue: 1 << 24)
}