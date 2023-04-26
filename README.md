# DUO DUO Market  
>  An e-commerce website that can support customers and vendors  
一个支持用户与商家两种类型用户使用的电商网站  
> 
> - 买家 Customer：  
Buyers can create accounts with a username, password, address, email, phone number and buy one or more products, like or dislike it, post comments, and read comments other buyers have posted.  
买家可以用用户名、密码、地址、电子邮件、电话号码创建账户，购买一个或
多个产品，喜欢或不喜欢它，发表评论，并阅读其他买家发表的评论。
> 
> - 卖家 vendor：  
The vendors also have accounts with username, password, email, address and also phone number, they add their products with the quantity and the price.  
供应商也有用户名，密码，电子邮件，地址和电话号码的帐户，可以在它们的店铺中添加的产品的数量和价格。  

> - 产品 product:  
The products are divided into categories containing products from the same type has a name, description, price, vendor name, number of likes/dislikes, user’s comments and an “add to cart” button  
产品被分为包含相同类型产品的类别，具有名称、描述、价格、供应商名称、喜欢/不喜欢的数量、用户评论和“添加到购物车”按钮  

--- 

## Technologies:  
- Python  
- Flask (version:`1.1.2`)  
- Mysql
- Html & css
- Javascript & jQuery  
- mysql-connector (connect mysql databse with python)  

## The knowledge that I have learned:  
1. DOM: 
> How to use the DOM to find, update, add, and remove elements in an HTML file.  
2. JS & jQuery:  
> add a event,  find element, **AJAX**`XMLHttpRequest`  
3. Flask:  
> `request`, `reponse`, `cookie`, `session`,`route()`,`template`,`jinja2`  
4. mysql.connector:  
> How to use python to control the mysql database
5. 
> How does a web site run between the browser and the server?  
> how to send and receive information?  
> what kind of data is there **(plain text,xml,Json)**  
> How to keep user data safe? **(cookie,session)**

---  

## Configuring environments  
1. Create a **virtual enviorment** (following the step):  
```
    // open cmd
    pip install virtualenv
    // install virtualenv,which is used to create a virtual envoirment
```
2. Find a suitable path and enter it：
```
    // make sure go to this path in cmd

    virtualenv flask-project
    // 将在文件夹中创建新的虚拟环境
    // 在项目中出现一个'flask-project'文件夹
    // A new virtual environment will be created in the folder
    // A folder called 'flask-project' has been created in the project
    
    cd flask-project 
    // 进入到venv文件夹中

    scripts\activate
    // 激活环境

    pip install Flask
    // 安装 flask

    pip install flask mysql-connector-python  
    // 安装与mysql的连接插件  
```  
3. Paste the `DUODUO` folder inside the `flask-project` folder,and run this project
> 文件夹里面的`app.py`是主程序
``` 
    // After moving the folder
    // go to cmd inside the DUODUO folder and execute the following command:

    set FLASK_ENV=development
    // 输入这个命令启动开发模式 (如果不需要修改代码可以省略这个步骤)  
    // Enter this command to start development mode(You can skip this step if you don't need to change the code.)

    python -m flask run
    // 运行flask项目
    // run this project

    // 如果显示Running on ..url ，则说明成功  
    // 浏览器输入该网址http://127.0.0.1:5000

    // Enter the URL http://127.0.0.1:5000 in browser

    // if you want to stop this project, use 'ctrl+c' in cmd
```

---  

## Project:  
- `static`: 存储静态文件如`css,js,image`等等
- `template` : 存放`html`文件  
- `app.py`: main program
