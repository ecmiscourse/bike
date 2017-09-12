﻿# 一、系统开发背景
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大学校园公用的自行车租赁服务是十分常见的， 以往，这样的服务提供方式
是通过人工登记，办理租赁手续等方式来完成的。这种传统的方式面临着手续繁
琐而且效率低下的问题。随着互联网的兴起以及 web 技术的不断发展，我们的
工作与日常生活受到了很大的改变，这极大的地方便了我们的工作与生活。在这
样的背景下，我们可以借助于互联网的手段来改善我们传统的自行车租赁模式，
从而减少成本，提高我们的工作效率。<br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;同时，更好的复用、降低开发费用以及更适合协作开发等特点使得面向对象编程语言变得流行
	<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在这次的课题中，我们通过采用面向对象的编程方式，来对本校自行车管理系统进行设计与实现。该网站的主要功能是要代替传统自行车租赁方式，实现租赁自行车，归还自行车、自行车维修等功能，极大地提高了自行车租赁业务的效率，从而降低了人力成本和物力成本。
	<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这次课题分析并且设计了自行车租赁后台管理系统的静态模型和动态模型，
完成了自行车租用系统开发的分析、设计和实现的工作。本自行车租赁网站通过
Web 方式完成用户与系统的交互，系统的功能模块具体有自行车信息管理模块、
租车信息管理模块、人员管理模块等。<br/>
# 二、系统规划<br/>
## 2.1系统目标分析<br/>
系统必须能减少工作人员的工作量，方便大学生借还自行车，提高效率，降低成本，由此提出以下基本要求。<br/>
（1） 减轻自行车服务队同学的工作负担、节省经费<br/>
（2） 提高自行车借还登记处理速度<br/>
（3） 减少登记出错率<br/>
（4） 更好、更有效为同学、教职工服务<br/>
（5） 网络化：在该系统中，各工作机通过网络互联，较容易的实现了数据的处理与反馈。网络化是一种趋势，所有的工作、学习、生活在这时都被赋予了鲜明的网络特色，顺应网络化发展需求。<br/>
（6） 智能化：从技术上的角度来讲。智能化就是自动化。本系统可以随时自动记录自行车的使用情况，包括出借和归还时间、租借人具体信息、使用时间长度等。充分利用了网络化的优势，方便服务于大众同时减轻管理员的劳动强度。<br/>
（7） 美观易用的界面：本系统基于 Jquery easyui，把复杂繁多的系统变得
直观易用，提高了系统的易用性。<br/>
1. 系统设计原则：<br/>
在系统的设计、开发和实施中，借助成熟的开发平台和开发工具，吸取以往
相关系统开发中的经验，力求使系统规范、易用、扩充灵活、安全可靠。<br/>
（1）实用性：这是开发该系统的首要原则，系统的实用性是衡量信息系统
的建设与否的基本标准之一，是该系统为学校师生创造效益的重要保证。<br/>
（2）可维护性：系统要有较强的后台管理能力， 便于在使用过程中对用户、
用户权限进行有效的管理。<br/>
（3）易移植性和扩展性： 系统要能方便地移植，并且实现与外部系统的集
成。<br/>
（4）针对性：该系统主要是为满足学校的具体需求和解决实际问题而开发
的，经过调查了解相关人员的需求而设计的。<br/>
2. 功能目标：<br/>
针对现有问题及实际要求，提出如下系统的功能目标：<br/>
![image](https://github.com/ecmiscourse/bike/blob/master/%E5%8A%9F%E8%83%BD%E6%A8%A1%E5%9D%97.PNG)
3. 性能目标：<br/>
（1）准确可靠，要求各种数据准确无误，信息反映真实、及时有效。<br/>
（2）安全：对于学生的个人信息，只有相关人员可以获取，其他人员无法得到数据；对所有操作都设置了权限， 具体到到每个人、 每个操作按钮。<br/>
（3）响应速度快、对用户友好：正常情况下，应保证系统的运行速度较快，方便用户的输入、操作简单方便。<br/>

## 2、构造用例模型图：
![image](https://github.com/ecmiscourse/bike/blob/master/%E7%94%A8%E4%BE%8B%E5%9B%BE.jpg)

# 四、系统设计
## 4.1系统功能结构图
![image](https://github.com/ecmiscourse/bike/blob/master/%E7%B3%BB%E7%BB%9F%E5%8A%9F%E8%83%BD%E7%BB%93%E6%9E%84%E5%9B%BE.PNG)
## 4.2系统时序图
![image](https://github.com/ecmiscourse/bike/blob/master/%E9%A1%BA%E5%BA%8F%E5%9B%BE.jpg)


## 4.3系统运行界面

### 1、登陆界面

=======
1、登陆界面
=======
### 1、登陆界面

![image](https://github.com/ecmiscourse/bike/blob/master/%E7%99%BB%E9%99%86.PNG)
### 2、主页面
![image](https://github.com/ecmiscourse/bike/blob/master/%E4%B8%BB%E9%A1%B5%E9%9D%A2.PNG)
### 3、我借的
![image](https://github.com/ecmiscourse/bike/blob/master/%E6%93%8D%E4%BD%9C1.PNG)
### 4、我还的
![image](https://github.com/ecmiscourse/bike/blob/master/%E6%93%8D%E4%BD%9C2.PNG)
### 5、借
![image](https://github.com/ecmiscourse/bike/blob/master/%E5%80%9F.PNG)
### 6、还
![image](https://github.com/ecmiscourse/bike/blob/master/%E8%BF%98.PNG)
### 7、人员管理
![image](https://github.com/ecmiscourse/bike/blob/master/%E4%BA%BA%E5%91%98.PNG)
<<<<<<< HEAD
8、站点管理
<<<<<<< HEAD
>>>>>>> origin/master
=======
=======
### 8、站点管理
>>>>>>> origin/master
![image](https://github.com/ecmiscourse/bike/blob/master/%E7%AB%99%E7%82%B9.PNG)
>>>>>>> origin/master
