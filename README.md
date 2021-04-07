# Perfumeshop
香水商城项目（ssm）
前端：bootstrap
后台：ssm
数据库：mysql</br>
首页接口:http://localhost:8080/shop/</br>
后台管理接口：http://localhost:8080/shop/admin/login</br>
页面展示：
![image](https://user-images.githubusercontent.com/49858063/113870881-e4afdb80-97e4-11eb-9cba-cf2c70481ae9.png)
![image](https://user-images.githubusercontent.com/49858063/113870997-0315d700-97e5-11eb-987d-263b1032eb82.png)
![image](https://user-images.githubusercontent.com/49858063/113871007-0610c780-97e5-11eb-8c41-daa1fcf054a9.png)
![image](https://user-images.githubusercontent.com/49858063/113871060-1628a700-97e5-11eb-8db7-be3b7546c1a0.png)

数据库实体设计：
①促销活动实体：活动编号、活动名、活动描述、折扣、满减价格、减少价格、满数量、减免数量。</br>
② 收货地址实体：收货地址编号、所属用户、省、市、区、详细地址、收货人、联系电话。</br>
③ 管理员实体：管理员编号、管理员账号、管理员密码。</br>
④ 商品分类实体：分类编号、分类名称。</br>
⑤ 我的收藏实体：收藏编号、商品编号、收藏时间。</br>
⑥ 评价实体：评价编号、用户编号、商品编号、星级、内容、评价时间。</br>
⑦ 商品实体：商品编号、商品名称、商品价格、商品数量、添加时间、商品分类、商品详情、商品详情、活动编号。</br>
⑧ 图片路径实体：路径编号、商品编号、路径。</br>
⑨ 订单实体：订单编号、用户编号、订单时间、旧总价格、新总价格、是否支付、是否发货、是否收货、是否完成订单、地址编号。</br>
⑩ 订单详情：订单详情编号、订单编号、商品编号、商品数量。</br>
⑪ 购物车实体：用户编号、商品编号、加入时间、商品数量。</br>
⑫ 用户实体：用户编号、用户名、密码、注册时间、邮箱、电话号码。</br>
