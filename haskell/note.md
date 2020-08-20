:set prompt "ghci>"
:set +t   print type of  output


load function 
:module + Data.Ratio

:info (+)   check  + function 
:type a   show a type   :t is short way


list  concat  ++   [1 2] ++[2 4]
lsit append head :   1:[2 3]         :  operate  must  start with single element

string is list of char 

在 Haskell里，所有类型名字都以大写字母开头，而所有变量名字都以小写字母开头
all type starts with Captial, all variable starts with lowercase


x::y  x type is y

use module
Prelude> :m +Data.Ratio  
Prelude Data.Ratio> 11 % 29
11 % 29
it :: Ratio Integer



if file named  WC.hs   runghc  WC  will run it 


Char Bool Int  Integer Double  

:l  load hs file 


```
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)
```

在 Haskell 里，代码的缩进非常重要：它会延续（continue）一个已存在的定义，而不是新创建一个。所以，不要省略缩进！



always have else
记住，Haskell 是一门以表达式为主导（expression-oriented）的语言。在命令式语言中，代码由陈述（statement）而不是表达式组成，因此在省略 if 语句的 else 分支的情况下，程序仍是有意义的。但是，当代码由表达式组成时，一个缺少 else 分支的 if 语句，在条件部分为 False 时，是没有办法给出一个结果的，当然这个 else 分支也不会有任何类型，因此，省略 else 分支对于 Haskell 

在 ghci 里定义变量的语法和在源码文件里定义变量的语法并不相同。在 ghci 里，变量通过 let 定义：

在 Haskell 里，类型的名字（类型构造器）和值构造器的名字是相互独立的。类型构造器只能出现在类型的定义，或者类型签名当中。而值构造器只能出现在实际的代码中。因为存在这种差别，给类型构造器和值构造器赋予一个相同的名字实际上并不会产生任何问题。


type 关键字用于设置类型别名，其中新的类型名字放在 = 号的左边，而已有的类型名字放在 = 号的右边。这两个名字都标识同一个类型，因此，类型别名完全是为了提高可读性而存在的。


(==) 操作符只接受类型相同的值作为它的参数，在类型签名里也可以看出这一点：


在 Haskell 里，列表 [1, 2] 实际上只是 (1:(2:[])) 的一种简单的表示方式，其中 (:) 用于构造列表：




模式匹配中的变量名命名

当你阅读那些进行模式匹配的函数时，经常会发现像是 (x:xs) 或是 (d:ds) 这种类型的名字。这是一个流行的命名规则，其中的 s 表示“元素的复数”。以 (x:xs) 来说，它用 x 来表示列表的第一个元素，剩余的列表元素则用 xs 表示。


还有另一种方法也可以用来引入局部变量：where 从句。where 从句中的定义在其所跟随的主句中有效。下面是和 lend 函数类似的一个例子，不同之处是使用了 where 而不是 let。


