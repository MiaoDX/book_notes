Corrigendum for the read books.

## [《解析卷积神经网络—深度学习实践手册》](http://lamda.nju.edu.cn/weixs/book/CNN_book.html)

* p.119, 式 (10.2) 中应该是缺少了一个 $\lambda$
* p.126, 11.2.1 训练时数据随机打乱
    - `learning that an unlikely event has occurred is more informative than learning that a likely event has occurred.`, unlikely, 应指“不太可能出现的/罕见”的，从概率较低但出现了的事件中学习更具有信息量。此处引用此句可能略显不当，但目前也没有其他更好的建议~
* p.158, 14.2.8 Torch
    - 里面提到了 `PyTorch 为 Torch 提供了更便利的接口`，应该指的是 [Python wrappers for torch and lua](https://github.com/hughperkins/pytorch)。但是最近确实出现了非 wrapper 的 [pytorch, Tensors and Dynamic neural networks in Python with strong GPU acceleration](https://github.com/pytorch/pytorch)。建议提及区分一下，可能的话也可以将 pytorch 加入框架对比。
    - 当然，因为关于软件的内容总会落后于实际情况，这也是没办法的事，比如 [MILA will stop developing Theano](https://groups.google.com/d/msg/theano-users/7Poq8BZutbY/rNCIfvAEAwAJ) may have some influence on this great framework, etc.