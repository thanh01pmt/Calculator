//
//  ViewController.swift
//  Calculator
//

import UIKit

class ViewController: UIViewController {
    
    //--------------------------------//
    // Constants and Varibles
    var result: Double = 0.0
    var preResult: Double = 0.0
    var formula: String = ""
    
    //--------------------------------//
    // Outlets
    // A tip to check data type
    // lblResult.text = String(describing: type(of: sender.titleLabel!.text!))

    @IBOutlet weak var lblFormula: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    //--------------------------------//
    // Formula Button Action
    // A tip to check data type
    // lblResult.text = String(describing: type(of: sender.titleLabel!.text!))
    
    @IBAction func clickBtn0(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn1(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn2(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn3(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn4(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn5(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn6(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn7(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn8(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn9(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnDot(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnPlus(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnMinus(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnMultiply(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnDivide(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickLeftParenthesis(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickRightParenthesis(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    //--------------------------------//
    // Function Button Action
    
    @IBAction func clickBtnEqual(_ sender: UIButton) {
        calculateResult()
    }
    
    @IBAction func clickBtnAllClear(_ sender: UIButton) {
        allClear()
    }
    
    @IBAction func clickBtnDeleteLast(_ sender: UIButton) {
        removeLastCharacter()
    }
    
    //--------------------------------//
    // Support Functions
    
    func clickBtnRelatedToFormula(_ sender: UIButton) {
        addToFormula(sender.titleLabel!.text!)
    }
    
    func addToFormula(_ str: String) {
        formula += str
        lblFormula.text = formula
    }

    func removeLastCharacter() {
        if formula == "" {
            return
        }
        formula.removeLast()
        lblFormula.text = formula
    }
    
    func evaluateFormula(_ formula: String) -> Double? {
        let expression = NSExpression(format:formula)
        let value = expression.expressionValue(with: nil, context: nil) as? Double
        return value
    }
    
    func calculateResult() {
        if let result = evaluateFormula(formula) {
            self.result = result
            lblResult.text = "= " + String(result)
            print("\(formula) = \(result)")
        }
    }
    
    func allClear() {
        result = 0.0
        preResult = 0.0
        formula = ""
        lblFormula.text = formula
        lblResult.text = String(result)
    }
    
    //--------------------------------//
    // Testcases
    
    func testCase1() {
        formula = "123"
        lblFormula.text = formula
        calculateResult()
    }
    
    func testCase2() {
        formula = "123*0.5"
        lblFormula.text = formula
        calculateResult()
    }
    
    func testCase3() {
        formula = "1+2*3"
        lblFormula.text = formula
        calculateResult()
    }

    //--------------------------------//
    // Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        allClear()
        testCase3()
    }
}

