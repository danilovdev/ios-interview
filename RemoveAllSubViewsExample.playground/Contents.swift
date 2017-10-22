//: Playground - noun: a place where people can play

import UIKit

//1.
var containerView = UIView()
containerView.addSubview(UILabel(frame: CGRect.zero))
print(containerView.subviews.count) // 1

for subView in containerView.subviews {
    subView.removeFromSuperview()
}

print(containerView.subviews.count) // 0

// 2.

containerView.addSubview(UILabel(frame: CGRect.zero))
print("//2 before: \(containerView.subviews.count)") // 1
containerView.subviews.map { $0.removeFromSuperview() }
print("//2 after: \(containerView.subviews.count)") // 0
// 3.

containerView.addSubview(UILabel(frame: CGRect.zero))
print("//3 before: \(containerView.subviews.count)") // 1
containerView.subviews.forEach {
    $0.removeFromSuperview()
}
print("//3 after: \(containerView.subviews.count)") // 0

// 4.

extension UIView {
    
    func removeAllSubView() {
        self.subviews.forEach { $0.removeFromSuperview() }
    }
    
    func removeAllSubViewOfType<T: UIView>(type: T.Type) {
        self.subviews.forEach {
            if ($0 is T) {
                $0.removeFromSuperview()
            }
        }
    }
    
    func removeAllSubViewOfTypeUsingHOF<T: UIView>(type: T.Type) {
        self.subviews.filter({ $0 is T }).map({ $0.removeFromSuperview() })
    }
    
}

containerView.removeAllSubView()

containerView.addSubview(UILabel(frame: CGRect.zero))
print("//4.1 before: \(containerView.subviews.count)")
containerView.removeAllSubViewOfType(type: UILabel.self)
print("//4.1 after: \(containerView.subviews.count)")


containerView.addSubview(UILabel(frame: CGRect.zero))
print("//4.2 before: \(containerView.subviews.count)")
containerView.removeAllSubViewOfTypeUsingHOF(type: UILabel.self)
print("//4.2 after: \(containerView.subviews.count)")






