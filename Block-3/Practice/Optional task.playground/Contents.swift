func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diam = diameter else {
        return nil
    }

    guard let slice = slices else {
        return nil
    }

    if diam <= 1 || slice <= 1 {
        return nil
    } else {
        let area = Double.pi * ((diam / 2) * (diam / 2))
        return area / Double(slice)
    }
  fatalError("Please implement the sliceSize(diameter:slices:) function")
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {

    guard let diamA = Double(diameterA) else {
        return "Wrong diam A"
    }

    guard let diamB = Double(diameterB) else {
        return "Wrong diam b"
    }

    guard let sliceA = Int(slicesA) else {
        return "Wrong slices A"
    }

    guard let sliceB = Int(slicesB) else {
        return "Wrong slices B"
    }
    
    let mySliceA = sliceSize(diameter: diamA, slices: sliceA)
    let mySliceB = sliceSize(diameter: diamB, slices: sliceB)
    
    if mySliceA == nil && mySliceB != nil {
        return "Slice B is bigger"
    } else if mySliceA != nil && mySliceB == nil {
        return "Slice A is bigger"
    } else if (mySliceA == nil && mySliceB == nil) || (mySliceA! == mySliceB!) {
        return "Neither slice is bigger"
    } else if mySliceA! > mySliceB! {
        return "Slice A is bigger"
    } else {
        return "Slice B is bigger"
    }

//    if diamA <= 1 && diamB >= 2 {
//        return "Slice B is bigger"
//    } else if
    
    return "lol"

}
