# UIButtonHitAnimation

一句话让你的UIButton拥有点击效果

<img src="https://github.com/OPTJoker/UIButtonHitAnimation/blob/master/BtnHitAnim.gif" height="576" width="320" alt="UIButton点击效果"/>

这是一个UIButton+ScaleAnimation category

引用头文件之后，直接一句代码：yourBtn.showScaleAnimation = YES;  即可让你的btn拥有点击效果。

唯一需要注意的是：调用btn.showScaleAnimation=YES 要放在btn addTarget: 方法之前。
