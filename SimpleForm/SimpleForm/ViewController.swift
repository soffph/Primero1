import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pececito: UIImageView!
    
    @IBOutlet weak var friend: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func KeboardRetrunKey(_ sender: UITextField) {
        if let text = sender.text{
            //text solo vive dentro del if
            print(text)
        }
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        
        print(sender.value)
    
    }
    @IBAction func switchActivated(_ sender: UISwitch) {
        //_ hacia afuera es anonimo
        //sender es dentro de la funcion
        if sender.isOn{
            print("switch esta prendido")
        }
        
    }
    @IBAction func FastForward(_ sender: Any) {
        pececito.isHidden = false
        //friend.isHidden = true
    }
    //para las vistas y botones
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title =
            textField.text
    }
    
}

