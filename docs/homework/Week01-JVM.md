- [作业3](#作业3)
- [作业3](#作业3-1)
  
  
## 作业3

自定义一个 Classloader，加载一个 Hello.xlass 文件，执行 hello 方法，此文件内容是一个 Hello.class 文件所有字节（x=255-x）处理后的文件。

```java
public class XClassLoader extends ClassLoader {
    private String path;

    /**
     * 设置自定义加载器 加载路径
     */
    public XClassLoader(String path) {
        this.path = path;
    }

    /**
     * 加载自定义类加载器,重写findClass方法
     * 如果要打破双亲委派模型，需要重写loadClass方法。
     */
    @Override
    protected Class<?> findClass(String name) {
        byte[] bytes = this.decodeBytes(name);
        // 根据字节码返回这个类
        return defineClass(name, bytes, 0, bytes.length);
    }

    /**
     * 解码xclass文件
     */
    private byte[] decodeBytes(String name) {
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(path + '/' + name + ".xlass");
        } catch (FileNotFoundException e) {
            System.out.println("Can't find " + name + ".xclass file!!!");
        }
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        int ch = 0;
        try {
            while ((ch = fis.read()) != -1)
                bos.write(255 - ch);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return bos.toByteArray();
    }

    public static void main(String[] args) throws Exception {
        XClassLoader xClassLoader = new XClassLoader(
                "C:\\WorkSpace\\IdeaProjects\\java-homework\\week01-jvm\\src\\main\\resources\\");
        // 反射调用
        Class<?> clazz = xClassLoader.findClass("Hello");
        Method method = clazz.getMethod("hello", null);
        Object instance = clazz.newInstance();
        method.invoke(instance, null);
    }
}
```

## 作业3

画一张图，展示 Xmx、Xms、Xmn、Meta、DirectMemory、Xss 这些内存参数的关系。

 <div align="center"> <img src="..\images\JVM启动参数.png" width="800px"></div>

