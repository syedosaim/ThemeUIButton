import UIKit

/// ThemeUIButton is a subclass of UIButton and implements BaseView
class ThemeUIButton: UIButton {
    
    //MARK: - Properties
    
    /// Flag for making button filled
    @IBInspectable open var isFilled:Bool = false {
        didSet {
            self.setupUI()
        }
    }
    
    override open var isEnabled: Bool{
        get{
            return super.isEnabled
        }
        set{
            super.isEnabled = newValue
            self.alpha = (newValue) ? 1 : 0.2
        }
    }
    
    //MARK: - Constructors
    
    /// Overridden constructor to setup/ initialize components.
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        self.setupUI()
    }
    
    /// Required constructor implemented.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupUI()
    }
    
    //MARK:- Methods
    
    override open func setTitle(_ title: String?, for state: UIControl.State) {
        super.setTitle(title, for: state);
    }
    
    private func setupUI(){
        
        if isFilled {
            self.backgroundColor = .black
            self.setTitleColor(.white, for: .normal)
            self.layer.borderWidth = 0
            self.layer.borderColor = UIColor.clear.cgColor
        }else{
            self.setTitleColor(.black, for: .normal)
            self.backgroundColor = .white
            self.layer.borderWidth = 2
            self.layer.borderColor = UIColor.black.cgColor
        }
    }
    
}
