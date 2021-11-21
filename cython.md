# Start of Cython

- 使用Cython构建python扩展(```start```文件夹)
  1. 编写`.pyx`文件(该文件的内容是.py文件的内容)
  2. 编写`setup.py`文件
  3. 构建Cython文件
     ```shell
     python setup.py build_ext --inplace
     ```
  4. 执行上述命令之后会生成```.pyd```文件
  5. 完成```.pyd```文件的生成之后即可调用```.pyx```文件之中的内容(参见```test.py```)

  在```.pyx```文件中,语法与python类似.

- Cython执行了什么?
  将```.pyx```文件之中的代码通过C重写,并编译成python可调用的模块,加快了运行速度.

- 另外一个例子
  1. 计算fib数列(```examples\fibo```)
  2. 寻找质数(```examples\primes```)

- cython调用C库
  - ```char*```转化```int```(```cython_using_c\cmath```)
  从```C```库之中调用函数或者声明```C```函数时,要加入c前缀,并且```setup.py```的写法也不一样
  