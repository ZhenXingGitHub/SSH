# SSH总结 #

###  SSH学习 ###
- **Struts2**：struts 采用MVC模式，主要是作用于用户交互，Struts2结合Struts和WebWork，Struts2以WebWork为核心，采用拦截器的机制来处理用户的请求，这样的设计也使得业务逻辑控制器能够与ServletAPI完全脱离开。![](https://i.imgur.com/XTu4nCQ.png) 
	- Struts优点：POJO表单和POJO动作、标签支持、AJAX支持、易于整合、模板支持、插件支持等。
	- 缺点：更大学习曲线（必须是习惯使用标准的JSP，Servlet API和大量精心设计的框架）、欠佳文档、较少透明度。
	- 最后一句：Struts 2是一个最好的网络架构和高度被用于开发富Internet应用程序（RIA）。
- **Spring**：采用IOC和AOP~作用比较抽象，是用于项目的松耦合；Spring是一个轻量级的DI和AOP容器框架，重要是：Spring非侵入式，基于Spring开发的应用一般不依赖Spring类。
	- DI:依赖注入（控制反转IOC），及被调用的对象由Spring依赖注入机制完成，在容器实例化对象时主动将其注入到调用对象。
	- AOP:面向切面编程。Spring对面向切面对象提供支持，通过其将业务逻辑从应用服务（ep：事务管理）中分离，实现高内聚开发，应用对象只关注业务逻辑，不在负责其他系统问题（ep：日志、事务等）。支持自定义切面。
	- 容器:Spring 是个容器，因为它包含并且管理应用对象的生命周期和配置。ep：对象创建、销毁、回掉等。
	- 框架:Spring作为一个框架，提供一些基本功能（ep：事务管理，持久化集成等），是开发人员专注开发应用逻辑，并其对主流框架提供很好的集成支持。
	- 缺点：项目有时会抽风，无缘无故的报错，而且报的错也很神奇。
- **Hibernate**：对象持久化框架（持久化是将程序数据在持久状态和瞬时状态间转换的机制），其实就是实体类和数据库表建立关系，执行相应SQL操作。
	- Hibernate是对JDBC进一步封装。
	- Hibernate的核心：![](https://i.imgur.com/0gSmyre.png)
		- 从上图看出Hibernate六大核心接口，Configuration接口：负责配置并启动Hibernate，SessionFactory接口：负责初始化Hibernate，Session接口：负责持久化对象的CRUD操作，Transaction接口：负责事务，Query和Criteria接口：负责执行各种数据库查询。（Configuration实例是一个启动期间的对象，一旦SessionFactory创建完成它就被丢弃了。）
	- Hibernate三种状态：![](https://i.imgur.com/bKsOdsc.jpg) 
	
	- 优点：以对象的思维操作数据库，只需操作独享，开发更加对象化；代码具有可复用性；轻量级框架，不需要继承任何类和实现任何接口（POJO对象）；代码测试方便；提高工作效率。
	- 缺点：数据库特性语句很难调优；对大批量数据更新存在问题；系统存在大量共计查询功能。
	

----------
# SSH项目 #
### NewResume ###
1. 初步学习SSH框架，项目未完成（理想很大时间精力没追上）
2. 项目概况：![](https://i.imgur.com/9bsPdka.png)

### GWORLD（绿色世界） ###
1. 项目实现前段用户视角和后端管路员视角，结合Struts、Spring、Hibernate，实现功能。
2. 使用Spring4注解：
	-  注入 @Repository、@Service、@Controller 和 @Component 将类标识为Bean
	- @Component 是一个泛化的概念，仅仅表示一个组件 (Bean) ，可以作用在任何层次。
	- @Service 通常作用在业务层，但是目前该功能与 @Component 相同。
	- @Constroller 通常作用在控制层，但是目前该功能与 @Component 相同。
	- @Repository 注解，需要在 XML 配置文件中启用Bean 的自动扫描功能，
	- @Resource（注解属于JavaEE），可以通过name进行指定 装配bean
	- @Autowired（注解输入Spring），和@Resource 效果差不多。。。默认按类型装配，要求一来对象必须存在。
3. 项目概况：随着生活水平的提高，人们对旅游有了很高的兴趣。本网站是实现向外发布于些旅游的攻略活动，和关于旅游的新闻，时时为游客和那些想自助旅游的人供最优信息。。。（WANG...）![](https://i.imgur.com/G5QO20R.png)

### BL事件管理系统 ###
1. 项目功能最全，结合了Struts、Spring、Hibernate、Jquery、Ajax等，前端框架采用bootstrap。
2. 踏踏实实加强Spring的学习，没有利用注解，利用Spring的的IOC and AOP 技术 实现响应操作。
3. 实现功能上，实现了一对多多对对多对一的...hub.xml
4. 项目概述：生活事情无处不在，不在自己能力的要向外求助，本网站就是一个为民解忧的人性化MAMA网站。用户可以通过添加事件，求助客服帮助，解决疑难问题。（聊天功能）
![](https://i.imgur.com/Zkh2L4q.png)


## 未完结 待续 ##
----------
