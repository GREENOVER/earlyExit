// I'm GREEN
// Exercise from Swift Programming (by Yagom)

// MARK: - Basic EarlyExit
for i in 0...3 {
    guard i == 2 else {
        continue
    }
    print(i)
}

// MARK: - Use EarlyExit for Optional Binding
func description(_ product: [String: String]) {
    guard let color: String = product["color"] else {
        return
    }
    print("This color is \(color)")

    guard let size: String = product["size"] else {
        print("This size is none")
        return
    }
    print("This size is \(size)")
}

var product: [String: String] = [String: String]()

product["color"] = "Green"
description(product)

product["size"] = "Big"
description(product)

// MARK: - Use EarlyExit for Optional Binding (2)
func info(color: String?, size: String?) {
    guard let color: String = color, let size: String = size else {
        print("It's not collect")
        return
    }
    print("This product's color is \(color) & size is \(size)")
}

info(color: product["color"], size: nil)
info(color: product["color"], size: product["size"])
