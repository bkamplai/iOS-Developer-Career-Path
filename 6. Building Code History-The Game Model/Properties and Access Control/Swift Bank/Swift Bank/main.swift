//
//  main.swift
//  Swift Bank
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct SwiftBank {
    private let password: String
    private var balance: Double = 0 {
        didSet {
            if balance < 100 {
                displayLowBalanceMessage()
            }
        }
    }
    static let depositBonusRate = 0.01
    
    init(password: String, initialDeposit: Double) {
        self.password = password
        if initialDeposit >= 1000 {
            makeDepositWithBonus(ofAmount: initialDeposit)
        } else {
            makeDeposit(ofAmount: initialDeposit)
        }
    }
    
    private func isValid(_ enteredPassword: String) -> Bool {
        if enteredPassword == password {
            return true
        } else {
            return false
        }
    }
    
    private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
        return (deposit * SwiftBank.depositBonusRate) + deposit
    }
    
    mutating func makeDepositWithBonus(ofAmount depositAmount: Double) {
        let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
        print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(depositWithBonus).")
        balance += depositWithBonus
    }
    
    mutating func makeDeposit(ofAmount depositAmount: Double) {
        if depositAmount <= 0 {
            print("Error: Deposit amount must be greater than zero.")
            return
        } else {
            print("Making a deposit of $\(depositAmount).")
            balance += depositAmount
        }
    }
    
    func displayBalance(usingPassword password: String) {
        if !isValid(password) {
            print("Error: Invalid password. Cannot retrieve balance.")
            return
        } else {
            print("Your current balance is $\(balance)")
        }
    }
    
    mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
        if !isValid(password) {
            print("Error: Invalid password. Cannot make withdrawal.")
            return
        } else {
            if withdrawalAmount <= 0 {
                print("Error: Withdrawal amount must be greater than zero.")
                return
            } else if withdrawalAmount > balance {
                print("Error: Insufficient funds.")
                return
            } else {
                balance -= withdrawalAmount
                print("Making a $\(withdrawalAmount) withdrawal.")
            }
        }
    }
    
    private func displayLowBalanceMessage() {
        print("Alert: Your balance is under $100")
    }
}

var myAccount2 = SwiftBank(password: "123456", initialDeposit: 1000)
myAccount2.displayBalance(usingPassword: "123456")
print("\n\n")
var myAccount = SwiftBank(password: "password", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: -50)
myAccount.makeDeposit(ofAmount: 0)
myAccount.makeDeposit(ofAmount: 50)
myAccount.makeWithdrawal(ofAmount: 100, usingPassword: "123456")
myAccount.makeWithdrawal(ofAmount: -100, usingPassword: "password")
myAccount.makeWithdrawal(ofAmount: 0, usingPassword: "password")
myAccount.makeWithdrawal(ofAmount: 1000, usingPassword: "password")
myAccount.makeWithdrawal(ofAmount: 500, usingPassword: "password")
myAccount.displayBalance(usingPassword: "123456")
myAccount.displayBalance(usingPassword: "password")
