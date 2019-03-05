
# Problem and Solution 

### Mar 1，2019后安装的Jupyter运行异常：连接Python3内核异常处理参考方法**

**1. 参考GitHub issue**  jupyter notebook server "connecting to kernel" problem #2664

https://github.com/jupyter/notebook/issues/2664

Tornado had a release `6.0.0` on **Mar 1 2019**, which triggered this problem recently, see: #4437

Note: the previous tornado release was `5.1.1`

so, downgrading tornado 6 to 5.1.1 

    >python -m pip uninstall tornado
   
    >python -m pip install tornado==5.1.1

>github issue: 用于向github仓库提出问题

**2. 参考提问** Jupyter notebook: connection to kernel restarts infinitely

 * https://stackoverflow.com/questions/39208523/jupyter-notebook-connection-to-kernel-restarts-infinitely

> https://stackoverflow.com/ 一个IT技术问答网站。简单类比一下，是一个程序相关的“知乎”


**3. 更新ipykernel**

在系统终端执行：

    >python -m pip install ipython

    >python -m pip install ipykernel

    >python -m ipykernel install

或者

    >python -m ipykernel install --user

**4. 注意事项：**

1. 不要使用*搜狗、360*这类基于开源浏览器内核开发的**个性化**浏览器
2. Windows10中不要安装任何第三方安全软件 
###  命令行执行>jupyter notebook后，jupyter总是启动到C:\Windows\system32

原因：使用管理员权限运行cmd,都启动到C:\Windows\system32

解决方法：使用普通用户权限运行jupyter notebook

### Windows安全防护

微软提供的security essentials是Windows最好的安全防护软件
  
从下面网址下载和操作系统对应的版本的security essentials（**Windows 10默认已经安装**），安装

http://windows.microsoft.com/zh-cn/windows/security-essentials-download
      
安装security essentials后，卸载所有其他各种"安全”软件。
   
### module ‘unittest’hasn't the attribute of ‘TestCase’

03014311 骆应东

我在一开始写单元测试的程序时将其写在一个命名为unittest的程序文件里，这个时候运行程序会出现错误 module ‘unittest’hasn't the attribute of ‘TestCase’提示

通过请教老师、同学，最后发现是因为文件命名为unittest，然后当运行程序import unittest时系统会‘迷路’，因为文件名和Python的自带包unittest发生混淆，系统无法正确引用Python的unittest包。所以解决办法是：将文件名修改为非unittest即可。

###  Windows环境下Jupyter notebook文件转换pdf失败

Jupyter notebook中可以ipynb转换为pdf

* 1 Windows环境下需要安装MikTex

* 2 安装pandoc

```bash
>pip install pandoc
```

* 3 ipynb转换为pdf

```bash
>jupyter nbconvert  --to pdf  需要转换的ipynb文件名
```

转换程序从MiKTex的远程仓库下载包时，可能会出现下载失败的问题，导致文档转换中断

* 4 解决方法：

多试验几次

```bash   
>jupyter nbconvert  --to pdf  需要转换的ipynb文件名
```

从源下载包.


### 在Windows环境下，使用VS Code终端运行Python程序，Python的print函数出现OSError问题

 在Windows环境下，使用VS code终端运行Python程序，Python的print函数会出现OSError问题，然而,在外部cmd中运行该Python程序却不会出现该问题.

```bash
OSError: raw write() returned invalid length 254 (should have been between 0 and 127)
```
与win10系统的版本有关系,查看版本：
```bash
>msinfo32
```

**解决办法**

* 1 安装win_unicode_console

```bash
>pip install win_unicode_console
```
2 在代码文件中添加以下两行代码

```python
import win_unicode_console
win_unicode_console.enable()
```