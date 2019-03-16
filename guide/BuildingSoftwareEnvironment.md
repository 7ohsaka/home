# The Guide of Building Software Environment

2019.3月以来Jupyter软件包，因为Tornado版本升级带来的Bug比较多。

安装后需要对Jupyte依赖的软件包Tornado,Notebook做降低版本处理

**Mar 1, 2019后安装的Jupyter连接Python3内核时异常**

https://github.com/jupyter/notebook/issues/2664

Tornado had a release `6.0.0` on **Mar 1 2019**, which triggered this problem recently

The previous tornado release was `5.1.1`, then,downgrading tornado 6 to 5.1.1 

    >python -m pip uninstall tornado
   
    >python -m pip install tornado==5.1.1

**Mar 10, 2019后安装的Jupyter运行时,自动打开浏览器时异常**

https://github.com/jupyter/notebook/issues/4467

    >python -m pip uninstall notebook
   
    >python -m pip install notebook==5.7.2

>github issue: github仓库的问题提出，讨论等

---
**[关于：Windows文件路径](./FilePath(Chinese).md)**

**[关于：计算机终端](./CodingWithTerminal.md/)**

**[Windows环境下VS Code编辑的UTF-8编码C++源码，编译生成的运行文件向终端输出中文乱码](./Problem_Solution.md)**
 
 ---

Firstly，You **MUST** [setup the working directory for the course](./AdvWorkingDir.md)
<!-- TOC -->

- [The Guide of Building Software Environment](#the-guide-of-building-software-environment)
    - [A:Python & PyPI](#apython--pypi)
        - [A.1 Customize Installation Python](#a1-customize-installation-python)
        - [A.2 The Python Package Index(PyPI)](#a2-the-python-package-indexpypi)
        - [A.3 Install Packages](#a3-install-packages)
            - [A.3.1 update `pip` to the most recent version](#a31-update-pip-to-the-most-recent-version)
            - [A.3.2 set `tsinghua` as default site](#a32-set-tsinghua-as-default-site)
            - [A.3.3 Install autopep8, pylint](#a33-install-autopep8-pylint)
    - [B:Jupyter Notebook](#bjupyter-notebook)
        - [B.1 Install & Start-up Jupyter Notebook](#b1-install--start-up-jupyter-notebook)
            - [Install Jupyter Notebook extensions(optional)](#install-jupyter-notebook-extensionsoptional)
        - [B.2 Literate programming your Jupyter Notebook in the `specific working folder`](#b2-literate-programming-your-jupyter-notebook-in-the-specific-working-folder)
        - [B.3 Using the Jupyter Notebook of PySEE/home](#b3-using-the-jupyter-notebook-of-pyseehome)
    - [C:Install MinGW-W64](#cinstall-mingw-w64)
        - [C.1 Download MinGW-W64](#c1-download-mingw-w64)
        - [C.2 Set MinGW-W64 Environment](#c2-set-mingw-w64-environment)
    - [D:Visual Studio Code](#dvisual-studio-code)
        - [D.1 Download and Install Visual Studio Code](#d1-download-and-install-visual-studio-code)
        - [D.2 Install Extension: Python,C/C++](#d2-install-extension-pythoncc)
        - [D.3 Using Visual Studio Code: Python,C/C++](#d3-using-visual-studio-code-pythoncc)
    - [E: Using Git](#e-using-git)
        - [E.1 Install Git for Windows](#e1-install-git-for-windows)
        - [E.2 Clone & Update the PySEE/home](#e2-clone--update-the-pyseehome)
    - [F:Scientific Computation Packages](#fscientific-computation-packages)
        - [F.1 Scipy](#f1-scipy)
        - [F.2 IAPWS-IF97 Package: SEUIF97](#f2-iapws-if97-package-seuif97)
    - [G:Install GSL and Gnuplot for Windows](#ginstall-gsl-and-gnuplot-for-windows)
        - [G.1 GSL for Windows](#g1-gsl-for-windows)
            - [G.1.1 Copy static and import libraries to the default `lib` path of MinGW-W64](#g11-copy-static-and-import-libraries-to-the-default-lib-path-of-mingw-w64)
            - [G.1.2 Copy dynamic libraries to the default path of Windows's dll](#g12-copy-dynamic-libraries-to-the-default-path-of-windowss-dll)
            - [G.1.3 Copy header files to the default `include` path of MinGW-W64](#g13-copy-header-files-to-the-default-include-path-of-mingw-w64)
        - [G.2 Gnuplot for Windows](#g2-gnuplot-for-windows)
    - [Extended](#extended)
        - [Windows10](#windows10)
        - [SEUIF97 Shared Library](#seuif97-shared-library)
        - [Install Python Packages: Third Parties,Requirements](#install-python-packages-third-partiesrequirements)
    - [References](#references)

<!-- /TOC -->
## A:Python & PyPI

Goto [the official Python site](https://www.python.org/downloads/), you can use typically **Download the latest version of Python** `button` that appears first on the page to get the latest version of Python.

You may choose the specific Python release for you, e.g. [**Python for Windows**](https://www.python.org/downloads/windows/)

### A.1 Customize Installation Python

In the example ,we use [Python 3.7.0 for Windows x86-64](https://www.python.org/ftp/python/3.7.0/python-3.7.0-amd64.exe)  

* 1  Make sure you **check** option **Add Python 3.7 to PATH**

* 2  To change install location, click on **Customize installation** , then **Next** and enter **C:\python37** the item of  **Customize installation location**

![Python3-path](./img/python37-path.jpg)

![Python3-location](./img/python37-location.jpg)

* 3 **Python Shell** : Running Python prompt on Windows

For Windows users, open the terminal in Windows, click the `Win+R`. In the dialog box, type `cmd` and press `[enter]` key.

Then, type `python` and in the terminal(if you have set the  `PATH` variable appropriately)

![python shell](./img/PythonShell.jpg)

Now, We start **a Python shell**.

The symbol `>>>`  a **shell** prompt indicating that the interpreter is expecting the user to type some Python code into the shell.

A command, often called a statement, instructs the interpreter to do something. For example, the statement `print('Yankees rule!')` instructs the interpreter to call the function `print`, which will output the string `Yankees rule!` to the window associated
with the shell.

The sequence of commands

```python
print('Yankees rule!')
print('But not in Boston!')
print('Yankees rule,','but not in Boston!')
```

![python shell-run](./img/PythonShell-Run.png)  

> **About Computer Terminal** ：[CodingWithTerminal.md](./CodingWithTerminal.md)

* 4 Using **IDLE**

Programmers use some sort of **text editor** that is part of an integrated development environment (IDE) to edit source code of computer programs. 

The **IDLE** is the simple IDE that comes as part of the standard Python installation package.

* When IDLE starts it will open a **shell** window into which you can type `Python commands`

* It will also provide you with a **file** menu and an edit menu

![idle](./img/python-idle.jpg)

### A.2 The Python Package Index(PyPI)

The Python Package Index(PyPI) is a repository of software for the Python programming language.: https://pypi.org/

`pip` is a package manage for Python. It makes installing and uninstalling Python packages

* Installing Python Modules : https://docs.python.org/3/installing/

**A.2.1 Install** 

The following command will install the latest version of a module and its dependencies from the Python Packaging Index:

```bash
>python -m pip install SomePackage  
```

Install the  multiple modules at the one `pip install` command

```bash
>python -m pip install SomePackage1  SomePackage2 
```

**A.2.2 Upgrading**
Normally, if a suitable module is already installed, attempting to install it again will have no effect. Upgrading existing modules must be requested **explicitly**:

```bash
>python -m pip install --upgrade SomePackage  
```
or

```bash
>python -m pip install -U SomePackage  
```

**A.2.3 Install from an alternate index**

```bash
>python -m pip install SomePackage  -i  the-url-of-an-alternate-index
``` 

Install from `@tsinghua` for the **higher speed**: https://pypi.tuna.tsinghua.edu.cn/simple 

```bash
>pip  install packagename  -i  https://pypi.tuna.tsinghua.edu.cn/simple
```

**A.2.4 set one alternate index site as the default site**

* if pip>10.0

```bash
>pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

**A.2.5 uninstall**  

```bash
>pip uninstall packagename  
```

**A.2.6 Show help for commands**

```bash
>pip  help  
```

### A.3 Install Packages

#### A.3.1 update `pip` to the most recent version

```bash
>python -m pip install -U pip -i  https://pypi.tuna.tsinghua.edu.cn/simple
```

![Python3-update](./img/python37-update-pip.jpg)

#### A.3.2 set `tsinghua` as default site 

```bash
>pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

#### A.3.3 Install autopep8, pylint

```bash  
>python -m pip install autopep8 
>python -m pip install pylint
```
or

```bash  
>python -m pip install autopep8 pylint
```

## B:Jupyter Notebook

Interactive analysis and literate programming

http://jupyter.org/

The Jupyter Notebook is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, data visualization, machine learning, and much more.

![jupyter-demo](./img/jupyter-demo.png)

### B.1 Install & Start-up Jupyter Notebook

To install Jupyter,run the following command in a terminal:

```bash   
>python -m pip install jupyter
```

To start up Jupyter, run the following command in a terminal:

```bash   
>jupyter notebook
```

#### Install Jupyter Notebook extensions(optional)

This repository 

https://github.com/ipython-contrib/jupyter_contrib_nbextensions

contains a collection of extensions that add functionality to the Jupyter notebook.

Install the python package
```bash   
>python -m pip install jupyter_contrib_nbextensions
```
Install javascript and css files

```bash   
>jupyter contrib nbextension install --user
```

### B.2 Literate programming your Jupyter Notebook in the `specific working folder`

* `B.2.1` make **the specific folder** for  your Jupyter Notebook,for example: `D:/mynotebook`

* `B.2.2` **Open a cmd window in the folder**:  If you're already in the folder you want, you do `Shift+[mouse right-click]` on the background of the Explorer window, then click on `"Open command window here"` or `"Open PowerShell window here"`

* `B.2.3` Enter `jupyter notebook` in cmd window of the folder,you will see the active jupyter server. the folder is the default  folder of your Jupyter Notebook 

   Jupyter will automatically open up in your default web browser

   ![jupyter-cmd](./img/jupyter-cmd.jpg) 

* `B.2.4`  start **Jupyter Notebook** quickly 

   * `1` make the **"start.bat"** batch file with the content **`jupyter notebook`** through Windows's **notepad.exe**(记录本)  in the working folder of your Jupyter Notebook

   * `2` Double-click **`start.bat`**，the **Jupyter Notebook**  server will start 

 ![jupyter-quick](./img/jupyter-bat.jpg) 

* `B.2.5 ` To create a new notebook 

  To create a new notebook, click the `New` button and select the `“Python 3”` option. You should see something like the follow Figure. If this is your first time, try clicking on the empty code `“cell”` and entering a line of Python code. Then press `Shift-Enter` to execute it.

![jupyter-hello](./img/jupyter-hello.jpg) 
  
  You may click  `File`->`Save As...` to save the notebook file as a given name with the extension `.ipynb`.

### B.3 Using the Jupyter Notebook of PySEE/home

pre-installed:Python3 and Jupyter Notebook

**B.3.1**  Download the zip file

Go to the repo **home** on the Github: https://github.com/PySEE/home ,then download `home.zip` to your computer

![download home.zip](./img/downloadhome.jpg)

**B.3.2** Open the notebooks in Jupyter Notebook

 unzip `home.zip`, double-click  `StartNB.bat`(OS:Windows)  in the sub-folder of **notebook** of `home`. This will open a web page in your browser with a list of the available notebooks.

## C:Install MinGW-W64

### C.1 Download MinGW-W64

Goto [MinGW-W64](https://sourceforge.net/projects/mingw-w64/files/?source=navbar) site, you see that：

**MinGW-W64 GCC-?.?.?**

```bash 
x86_64-posix-sjlj
x86_64-posix-seh
x86_64-win32-sjlj
x86_64-win32-seh 
```

* posix: enable C++11/C11 multithreading features

* win32 using the win32 API multithreading features 

* sjlj: 32 and 64 bits,but it incurs a minor performance penalty
 
* seh：64 bits only
  
Download the latest available version of gcc compiler for **windows64** with **win32 API multithreading**：

* GCC-8.1.0 [x86_64-win32-seh](https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-win32/seh/x86_64-8.1.0-release-win32-seh-rt_v6-rev0.7z)

> [POSIX](https://en.wikipedia.org/wiki/POSIX): The Portable Operating System Interface is a family of standards specified by the IEEE Computer Society for maintaining `compatibility between operating systems`. POSIX defines the application programming interface (API), along with command line shells and utility interfaces, for software compatibility with variants of `Unix and other operating systems`.

> [Thread](https://en.wikipedia.org/wiki/Thread_(computing)) In computer science, a thread of execution is the smallest sequence of programmed instructions that can be managed `independently by a scheduler`, which is typically a part of the operating system. The implementation of threads and processes differs between operating systems, but in most cases `a thread is a component of a process`. Multiple threads can exist within one process, executing `concurrently` and `sharing resources` such as memory, while different processes do not share these resources. In particular, the threads of a process share its executable code and the values of its dynamically allocated variables and non-thread-local global variables at any given time. 
  
### C.2 Set MinGW-W64 Environment

**C.2.1** unzip the zipped MinGW-w64,then,remove to **C:\mingw64**

**C.2.2** Add **C:\mingw64\bin** to the system environment variable **Path**

   For Windows 10: 

   Start  "Windows Start Menu" ⇒ Open "Settings" ⇒ Search for "environment" ⇒ Select "Edit System environment variables".

  ![windows-setting-environment](./img/windows-setting-environment.jpg)
 
   Choose "Environment Variables" ⇒  Go to the section  "**System Variable**" ⇒ Choose the "**Path**" ⇒ Choose "**New**" (add a new folder to  the **Path** variable) > Enter the value: **C:\mingw64\bin**

   ![mingw-w64-path](./img/mingw-w64-path.jpg)

**C.2.3** RENAME `C:\mingw64\bin\mingw32-make.exe` to  `C:\mingw64\bin\make.exe`

**C.2.4** Verify the GCC installation by listing the version of gcc:
```bash
> gcc --version
```

## D:Visual Studio Code

Visual Studio Code is a lightweight but powerful source code editor which runs on your desktop and is available for Windows, macOS and Linux. It comes with built-in support for JavaScript, TypeScript and Node.js and has a rich ecosystem of extensions for other languages (such as C++, C#, Python, PHP, Go) and runtimes (such as .NET and Unity). 

### D.1 Download and Install Visual Studio Code 
 
Download  Visual Studio Code https://code.visualstudio.com/, then install

### D.2 Install Extension: Python,C/C++

* Python https://code.visualstudio.com/docs/languages/python

* C/C++ https://code.visualstudio.com/docs/languages/cpp

### D.3 Using Visual Studio Code: Python,C/C++

Getting Started with Python in VS Code
https://code.visualstudio.com/docs/python/python-tutorial

![vscode-python](./img/vscode-python.png)

Getting Started with C/C++ in VS Code

* **1** Open the PowerShell terminal in the folder of C++ code file

   ![vscode-open-terminal](./img/vscode-open-terminal.jpg)

   ![vscode-terminal](./img/vscode-terminal.jpg)

* **2** Using g++ to compile the C++ code to the executable file,then running the exe file in the terminal

   ![vscode-gcc](./img/vscode-gcc.jpg)

## E: Using Git

We **recommend** that you use [git](https://git-scm.com) to handle everything in the course: the repositories of PySEE,your projects,etc. 

### E.1 Install Git for Windows

Download Git for Windows: https://git-scm.com/download/win ,then install

### E.2 Clone & Update the PySEE/home 

After you have installed **git**, You may use the following **commands:**

**Clone the PySEE/home to your computer**

```bash
>git clone https://github.com/PySEE/home.git
```

**Cloning the `S2019` branch of repository `shallowly` for saving bandwidth**

```bash
>git clone --depth 1 -b S2019 https://github.com/PySEE/home.git
```

When you clone a repository you set up a copy on your computer. This will create a folder **home** on your computer with the files in sub-folders.

**Updating to The Latest Version**

As we release new files or  update files, you'll have to update your repository. You can do this by changing into the `home` directory and executing:

```bash
git pull
```

That's it - you'll have the latest version of the repository.

![download](./img/clonehomedir.jpg)

>you may also use any GUI git client to clone and update this repository, for example:  [Visual Studio Code](https://code.visualstudio.com/) ,or  [GitHub Desktop](https://desktop.github.com/)

## F:Scientific Computation Packages

### F.1 Scipy
   
   Numpy, Scipy, Matplotlib https://www.scipy.org/install.html 

```bash   
> python -m pip install numpy scipy matplotlib
``` 

### F.2 IAPWS-IF97 Package: SEUIF97 

```bash   
> python -m pip install seuif97 
``` 

## G:Install GSL and Gnuplot for Windows

Install GSL and Gnuplot for Windows compiled with MinGW-W64

### G.1 GSL for Windows

Goto https://github.com/PySEE/GSL4Windows download the zip file,then unzip it，copy the files as the following steps：

#### G.1.1 Copy static and import libraries to the default `lib` path of MinGW-W64 

Copy static and import libraries in  `GSL4Windows\lib`

* libgsl.a libgsl.dll.a 

* libgslcblas.a libgslcblas.dll.a

To the subfolder `lib\gcc\x86_64-w64-mingw32\Version` of  MinGW-W64.

For Example: MinGW-W64 8.1.0 is installed in `C:\mingw64\`, copy to `C:\mingw64\lib\gcc\x86_64-w64-mingw32\8.1.0`

#### G.1.2 Copy dynamic libraries to the default path of Windows's dll

Copy dynamic libraries in `GSL4Windows\bin` 

* libgsl-23.dll

* libgslcblas-0.dll

TO `C:\Windows\System`

#### G.1.3 Copy header files to the default `include` path of MinGW-W64 

Copy the folder `\gsl` in the `GSL4Windows\include` to `C:\mingw64\x86_64-w64-mingw32\include\`

### G.2 Gnuplot for Windows

Goto http://tmacchant3.starfree.jp/gnuplot/Eng/winbin/ download Gnuplot for Windows64 compiled with MinGW-W64 64bit (`gp*-*-win64-mingw_exe.zip`),then unzip and run.
 
After installed, add the path of gnuplot.exe to the system environment variable **Path**，e.g: `"C:\Program Files\gnuplot\bin\"`
 
## Extended

### Windows10

64-bit Windows10 

**1 Southeast University**

January 2015, Southeast University and Microsoft Corp provide legitimate Windows, Office for the staffs and students.

  http://nic.seu.edu.cn/2015/0113/c12333a115289/page.htm
  
**2 Microsoft**
  
https://www.microsoft.com/en-gb/software-download/windows10

Do you want to install Windows 10 on your PC?
       
* download and run the media creation tool: 
       https://go.microsoft.com/fwlink/?LinkId=691209
 
### SEUIF97 Shared Library

Go to the repo on the Github：https://github.com/PySEE/SEUIF97 , download SEUIF97.zip

![Download SEUIF97.zip](./img/downloadseuif97.jpg)
   
*  Unzip the downloaded file,then：
   
   * 1 copy **libseuif97.dll** to c:\windows\system
   * 2 copy **seuif97.py** to the **Lib** dir of installed Python. If you have install Python3.7 in the C:\Python37\, copy to `C:\python37\Lib`

### Install Python Packages: Third Parties,Requirements

* `1` Binary packages are also available from third parties. For Windows, Christoph Gohlke provides [Unofficial Windows Binaries for Python Extension Packages](https://www.lfd.uci.edu/~gohlke/pythonlibs/).

```bash 
>pip install *.whl
```

* `2` Requirements file [requirements.txt](./requirements.txt) is the file containing a list of items to be installed for the course:

```bash 
>python -m pip install -r requirements.txt 
```
## References

* 1 Python3:  https://www.python.org/downloads/
  
  * Guido van Rossum. Python Tutorial. https://docs.python.org/3/tutorial/index.html

* 2 Python Packages

  * Jupyter: http://jupyter.org/

  * Documentation. http://jupyter.readthedocs.org/en/latest/

  * Numpy、Scipy and Matplotlib http://www.scipy.org/ 

    * Scipy. http://www.scipy.org/

    * Numpy. http://www.numpy.org/
  
    * Matplotlib.  http://matplotlib.org/

  * IAPWS-IF97:

     * Shared Lib: https://github.com/PySEE/SEUIF97

     * Python: https://github.com/jjgomera/iapws
 
* 3 Visual Studio Code：https://code.visualstudio.com/

   * Documentation: https://code.visualstudio.com/docs

   * **Markdown** and VS Code： https://code.visualstudio.com/docs/languages/markdown

   * Getting Started with **Python** https://code.visualstudio.com/docs/python/python-tutorial

   * **C/C++** for VS Code： https://code.visualstudio.com/docs/languages/cpp
 
* 4 GCC, the GNU Compiler Collection：http://gcc.gnu.org/

     * MinGW-W64(GCC) Compiler Suite:：http://mingw-w64.org/

     * GCC and Make：Compiling, Linking and Building C/C++ Applications http://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html

* 5 Git

    * Git  https://git-scm.com

    * How to get started with GIT and work with GIT Remote Repo  http://www3.ntu.edu.sg/home/ehchua/programming/howto/Git_HowTo.html

    * Git Version Control in VS Code：https://code.visualstudio.com/docs/editor/versioncontrol

    * 知乎：怎样使用GitHub. http://www.zhihu.com/question/20070065