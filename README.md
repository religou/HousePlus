# HousePlus
基于SSM的家政服务系统  
用到的技术  
  前端：  
   1.BootStrap  
   2.sweetalert  
   3.jquery  
  后端：  
   1.Spring  
   2.SpringMVC  
   3.MyBatis  
  数据库：  
   1.MySQL  
  开发工具：  
   1.idea  
   2.navicate  
目录结构  
|--src  
  |--main  
    |--java  
      |--controller  
      |--dao  
      |--interceptor  
      |--pojo  
      |--service  
      |--utils  
    |--resources  
      |--mappers  
      |--db.properties  
      |--log4j.properties  
      |--mybatisConfig.xml  
      |--springContext-dao.xml  
      |--springContext-service.xml  
      |--springmvcContext.xml  

|--sql  
  |--houseplus.sql  

功能描述：  
1.用户的注册、登录、退出系统  
2.用户的个性化推荐（基于物品的协同过滤）  
3.家政人员上传资料、身份认证和资格认证  
4.消费者发布预约、查看预约、确认预约、评价订单、删除订单、修改个人资料  
5.家政人员修改个人资料、申请预约、接受订单、取消订单、完成订单  
6.管理员对用户认证管理和系统的量化查看  
后续添加....  


系统部署：  
1.将src直接导入到idea中，idea中可以使用tomcat启动或者maven启动，看个人习惯，我是用maven启动的，因为我的tomcat过期了 ^__^  
2.将sql语句导入到数据库中  
3.用户登录  
  （1）消费者登录  
      帐号：18796283605  
  （2）家政人员登录  
      帐号：18796283604  
  （3）管理员登录  
      帐号：18796283601  
   密码都是123456  
      

