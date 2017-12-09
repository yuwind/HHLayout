 LightAutoLayout
轻量级自动布局，支持多级映射



**1、**快速添加

```objc
label1.topLeft_(CGRectMake(100, 200, 70, 30));//对应x,y,w,h
label1.around_();//等于父视图
```
**2、**常量添加

```objc
label1.left_.top_.size_.constList(@(100),@(200),@(50),@(50),nil).on_();//对应x,y,w,h
```
**3、**多级映射方法

>label4的左边等于label3的右边同时偏移10point，宽和高等于100，centerY等于label3


```objc
 label4.left_.widt_.heit_.centY.equalTo(label3.righ_).offset(10).constList(@(100),@(100),nil).on_();
```

