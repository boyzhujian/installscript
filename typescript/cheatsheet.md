### basic types
- any
- void
- boolean
- number
- string 
- null
- undefined
- array  string[]   or  Array<number>
- tuple  [string, number]     let x: [string, number]; Initialize it x = ["hello", 10]
- union  string | null | undefined   /* union */
- enum  enum Color {Red, Green, Blue = 4}    let c: Color = Color.Green
- never 
- object
- date  let orderDate: Date = new Date(2017, 2, 9);



### type assertions
```
let someValue: any = "this is a string";
let strLength: number = (someValue as string).length;
```

###  interface  
```
interface User {
  readonly name: string,
  age?: number
}
function printLabel(options: User) { ... }
```

### dynamic keys
```
{
  [key: string]: Object[]
}
```

### type alias
type Name = string | string[]


### classes
```
class Point {
  x: number
  y: number
  static instances = 0
  constructor(x: number, y: number) {
    this.x = x
    this.y = y
  }
}
Public (default)
public firstName: string;
Protected
protected inventory: number;
Private
private outOfS­tock: boolean;
Read Only
readonly pi: number = 3.14159;
Static
static log(msg: string) { consol­e.l­og(msg) };

class Point {...}
class Point3D extends Point {...}
interface Colored {...}
class Pixel extends Point implements Colored {...}
abstract class Person {
  name: string;
  monthlySalary: number;
  monthlyBenefits: number;
  abstract calcSalary(): number;
}
```

#### optional parametes
?

#### rest parameters
...

###  namespaces
```
namespace AcmeCorp.Logging {
  export class Logger {
       static log(msg: string) : void {
        console.log(msg);
      };
  }
}
import logger = AcmeCorp.Logging.Logger;
namespace AcmeCorp.OnlineStore {
  class OrderLogic {
    calcOrder(): number {
        logger.log("calculating order");
        return 0;
    }
  }
}
```

###  generics
```
class Greeter<T> {
  greeting: T
  constructor(message: T) {
    this.greeting = message
  }
}
let greeter = new Greeter<string>('Hello, world')
```

### modules
export interface User { ... }

### type extraction
```
interface Building {
  room: {
    door: string,
    walls: string[],
  };
}

type Walls = Building['room']['walls']; // string[]
```
