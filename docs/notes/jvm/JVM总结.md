# 1 JDK、JRE、JVM区别与联系

* **JDK**（Java Development Kit） 是用于开发Java应用程序的软件工具集合，主要包括了Java运行时环境（JRE）和一些Java开发工具（例如解释器`java.exe`、编译器`javac.exe`、打包工具`jar.exe`、文档生成器`javadoc.exe`等）。
* **JRE**（Java Runtime Environmet）提供Java应用程序执行时所需的环境，由Java虚拟机（JVM）、核心类（lib）及支持文件组成。
* **JVM**（Java Virtual Machine）就即所谓的Java虚拟机，它的主要工作是解释Java 程序生成的字节码文件（`xxx.class`）并将其映射到本地的CPU的指令集或OS的系统调用中。Java语言之所以能跨平台运行，是因为不同的操作系统使用不同的JVM映射规则，让其与操作系统无关，完成了跨平台性。
  * Java虚拟机根本不关心运行在其内部的程序到底是使用何种编程语言编写的，它只关心**“字节码”文件**。也就是说Java虚拟机拥有语言无关性，并不会单纯地与Java语言“终身绑定”，**只要其他编程语言的编译结果满足并包含Java虚拟机的内部指令集、符号表以及其他的辅助信息，它就是一个有效的字节码文件，就能够被虚拟机所识别并装载运行**（例如Kotlin、Groovy等语言）。

**三者之间关系**：`JDK > JRE > JVM`。

```java
JDK = JRE + tools
JRE = JVM + libraries
```

<div align="center"> <img src="..\..\..\images\jvm\jvm.image" width="600px"> </div>

> 注意：jdk 9版本后就不存在jre了。

# 2 JVM体系结构

JVM主要被分为三个子系统：

* 类加载器子系统
* 运行时数据区
* 执行引擎

不同jdk版本JVM体系结构也有略微差别：

* jdk7 之前版本

<div align="center"> <img src="..\..\..\images\jvm\JVM体系结构-jdk7.png" width="800px"> </div>

* jdk8 之后版本

<div align="center"> <img src="..\..\..\images\jvm\JVM体系结构-jdk8.png" width="800px"> </div>

# 3 字节码

`Java bytecode` 由单字节（byte）的指令组成，理论上最多支持 256 个操作码（opcode）。 实际上 Java 只使用了200左右的操作码， 还有一些操作码则保留给调试操作。

生成字节码基本命令：

* 编译生成`.class`：`javac Hello.java`。
* 反编译字节码获取指令清单：`javap -c Hello.class`或`javap -c Hello`。
  * `javap -help`查看命令。例如还要查看常量池等附加信息：`javap -c -v Hello.class`。

按照指令性质，可以将JVM指令分为4类：

* 栈操作指令
* 程序流程控制指令
* 对象操作/方法调用指令
* 算术运算及类型转换指令

> 待编写... ...

**常见算数操作与类型转换**

![img](..\..\..\images\jvm\JVM字节码指令.png)

**方法调用指令**

**Invokestatic**：顾名思义，这个指令用于调用某个类的静态方法，这是方法调用指令中最快 的一个。 

**Invokespecial** ：用来调用构造函数，但也可以用于调用同一个类中的 private 方法, 以及可 见的超类方法。 

**invokevirtual** ：如果是具体类型的目标对象，invokevirtual 用于调用公共、受保护和 package 级的私有方法。

**invokeinterface** ：当通过接口引用来调用方法时，将会编译为 invokeinterface 指令。 

**invokedynamic** ： JDK7 新增加的指令，是实现“动态类型语言”（Dynamically Typed Language）支持而进行的升级改进，同时也是 JDK8 以后支持 lambda 表达式的实现基础。

> 其余指令可查看[JVM指令手册](https://blog.csdn.net/KAIZ_LEARN/article/details/109156774)

# 4 类加载器

## 4.1 类生命周期与加载过程

<div align="center"> <img src="..\..\..\images\jvm\类的生命周期.png" width="500px"> </div>

> 待编写.. ..

## 4.2 类加载器分类

<div align="center"> <img src="..\..\..\images\jvm\类加载类别.png" width="400px"> </div>

* **启动类加载器**（Bootstrap ClassLoader）: 它用来加载 Java 的核心类，是用原生**C/C++**代码来实现的，负责加载JDK中`jre/lib/rt.jar`里所有的class。其并不继承自 `java.lang.ClassLoader`，它可以看做是JVM自带的，我们在代码层面无法直接获取到启动类加载器的引用，所以不允许直接操作它， 如果打印出来就是个 null 。举例来说，`java.lang.String`是由启动类加载器加载的，所以`String.class.getClassLoader()`就会返回null。但是后面可以看到可以通过命令行参数影响它加载什么。
* **扩展类加载器**（Extension ClassLoader）：**Java**语言编写，它负责加载JRE的扩展目录，`lib/ext` 或者由`java.ext.dirs`系统属性指定的目录中的jar包的类，代码里直接获取它的父 类加载器为null（因为无法拿到启动类加载器）。
* **应用类加载器**（AppClassLoader）：它负责在JVM启动时加载来自Java命令的classpath或者­cp选项、`java.class.path`系统属性指定的jar包和类路径。在应用程序代码里可以通过ClassLoader的静态方法`getSystemClassLoader()`来获取应用 类加载器。如果没有特别指定，则在没有使用自定义类加载器情况下，用户自定 义的类都由此加载器加载。

* **ClassLoader类**：所有的类加载器都继承自ClassLoader（**除了**启动类加载器）。

| 方法名称                                               | 描述                                                         |
| ------------------------------------------------------ | ------------------------------------------------------------ |
| `getParent()`                                          | 返回该类加载器的超类加载器                                   |
| `loadClass(String name)`                               | 加载名称为name的类，返回结果为java.lang.Class类的实例        |
| `findClass(String name)`                               | 查找名称为name的类，返回结果为java.lang.Class类的实例        |
| `findLoadedClass(String name)`                         | 查找名称为name的已经被加载过的类，返回结果为java.lang.Class类的实例 |
| `defineClass(String name, byte[] b, int off, int len)` | 把字节数组b中的内容转换为一个Java类，返回结果为java.lang.Class类的实例 |
| `resolveClass(Class<?> c)`                             | 连接指定的一个Java类                                         |

获取ClassLoader的途径：

- 获取当前ClassLoader：`clazz.getClassLoader()`
- 获取当前线程上下文的ClassLoader：`Thread.currentThread().getContextClassLoader()`
- 获取系统的ClassLoader：`ClassLoader.getSystemClassLoader()`
- 获取调用者的ClassLoader：`DriverManager.getCallerClassLoader()`

## 4.3 类加载机制

**双亲委托**：如果一个类加载器收到了类加载请求，它并不会自己先去加载，而是把这个请求委托给父类的加载器去执行。如果父类加载器还存在其父类加载器，则进一步向上委托，依次递归，请求最终将到达顶层的启动类加载器。如果父类加载器可以完成类加载任务，就成功返回，倘若父类加载器无法完成此加载任务，子加载器才会尝试自己去加载，这就是双亲委派模式。（注意，此处的父类、子类不是继承中父类、子类的概念。）

<div align="center"> <img src="..\..\..\images\jvm\双亲委托.png" width="600px"> </div>

**负责依赖**：如果一个加载器在加载某个类的时候，发现这个类依赖于另外几个类 或接口，也会去尝试加载这些依赖项。

**缓存加载**：为了提升加载效率，消除重复加载，一旦某个类被一个类加载器加 载，那么它会缓存这个加载结果，不会重复加载。

# 5 JVM 运行时数据区

# 6 执行引擎

# 7 JVM启动参数

JVM启动参数可分为三类：

* **标准参数**（`-`），所有的 JVM 都要实现这些 参数，并且向后兼容。 `-D`设置系统属性。
* **非标准参数**（`-X`）， 默认 JVM 实现这些参数的功能，但并不保证所 有 JVM 实现都满足，且不保证向后兼容。 可以使 用`java -X`命令来查看当前 JVM 支持的非标准参数。
* **非稳定参数**（`-XX`），专门用于控制 JVM的 行为，跟具体的 JVM 实现有关，随时可能会在下个版本取消。 
  * `-XX：+-Flags`形式, `+- `是对布尔值进行开关。
  * ` -XX：key=value`形式, 指定某个选项的值。

<div align="center"> <img src="..\..\..\images\jvm\JVM启动参数.png" width="1000px"> </div>

# 8 JVM工具

# 9 垃圾收集器