import Foundation
import UIKit

public class DateController : UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("TESET CODE")
        self.datePick()
        self.datePick2()
    }
    
    private let formatForTimeZone = "yyyy-MM-dd HH:mm:ss Z"
    private let formatForWithoutTZ = "yyyy-MM-dd HH:mm:ss"
    
    private func datePick() {
        let dateStr = "2021-01-21 14:52:40 +0900"
        let formatter = DateFormatter()
        formatter.dateFormat = self.formatForTimeZone
        
        formatter.timeZone = TimeZone(abbreviation: "UTC") // for utc
        
        //FOR Locale time
        //formatter.timeZone = .current
        //formatter.timeZone = .autoupdatingCurrent
        //formatter.locale = .current
        
        guard let _date = formatter.date(from: dateStr) else {
            print("Failed")
            return
        }
        
        print("Date : \(_date)")
        let str = formatter.string(from: _date)
        print("STR : \(str)")
    }
    private func datePick2() {
        let dateStr = "2021-01-21 14:52:40"
        let formatter = DateFormatter()
        formatter.dateFormat = self.formatForWithoutTZ
        
        //For UTC
        //formatter.timeZone = TimeZone(abbreviation: "UTC")
        
        //FOR Locale time
        formatter.timeZone = .current
        formatter.timeZone = .autoupdatingCurrent
        formatter.locale = .current
        
        guard let _date = formatter.date(from: dateStr) else {
            print("Failed")
            return
        }
        
        print("Date : \(_date)")
        let str = formatter.string(from: _date)
        print("STR : \(str)")
    }
}
