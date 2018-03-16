// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Cars

class CarsTests: XCTestCase {
    
  func test_ShouldBuyCar_GivenAHatchback_ShouldReturnFalse() {
    let car = Car()
    car.type = "Hatchback"
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  }
  
  func test_shouldBuyCar_GivenAPinkCar_ShouldReturnTrue() {
    let car = Car()
    car.color = "pink"
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertTrue(result)
    
  }
  
  func test_shouldBuyCar_GivenAPinkCar_AndAHatchback_ShouldReturnFalse() {
    let car = Car()
    car.color = "pink"
    car.type = "hatchback"
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertFalse(result)
    
  }

  
  func test_shouldBuyCar_GivenACarBetween6and11Litres_AndEqualOrUnder5000_ShouldReturnTrue() {
    let car = Car()
    car.price = 2500
    car.litresPer100km = 7
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertTrue(result)
  }
  
  func test_shouldBuyCar_GivenACarNotBetween6and11Litres_ShouldReturnFalse() {
    let car = Car()
    car.price = 2500
    car.litresPer100km = 13
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  }
  
  func test_shouldBuyCar_GivenACarEqualOrUnder5000_ShouldReturnTrue() {
    let car = Car()
    car.price = 2500
    car.litresPer100km = 7
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertTrue(result)
  }
  
  func test_shouldBuyCar_GivenACarOver5000_ShouldReturnFalse() {
    let car = Car()
    car.price = 7500
    car.litresPer100km = 7
    let carBuyer = CarBuyer()
    let result = carBuyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  }
  
}
