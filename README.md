# 一些记录

> 从 vim 阵营跳了出来，记录一下自己的配置，还有一些老是忘的快捷键

![截图](https://cdn.qiwm.com/github/Screenshot-20191223001701-1674x1041.png)

## 获取帮助

- C-h k : 寻找快捷键的帮助信息
- C-h v : 寻找变量的帮助信息
- C-h f : 寻找函数的帮助信息

## 基本操作

- C-x C-r : 打开最近文件列表，调用 *recentf*
- C-x u : 调用 *undo-tree*
- C-s : 搜索
- C-r : 反向搜索
- C-x ] : *forward-page* 下移一页
- C-x [: *backward-page* 上移一页
- M-g g n : *goto-line* 移动到第n行
- C-l : *recenter* 将当前位置放到页面中间
- C-x C-w : *write-file* 另存文件
- C-x z : *repeat* 重复前个命令
- C-x C-o : *open-line* 插入空行
- C-c C-f : 格式化
- C-x d : *dired mode*，图形化的资源管理器
  - *+* : 创建目录
  - *g* : 刷新目录
  - *c* : 拷贝
  - *D* : 删除
  - *d* : 标记删除
  - *u* : 取消标记
  - *x* : 执行所有的标记

## 标记相关

- C-SPA : *set-makr-cocmmand* 设定标记
- C-x C-e : *exchange-point-and-mark* 交换标记和光标的
- C-w : *kill-region* 删除区域中内容 
- C-x C-u : *upcase-region*  将区域中字母改为大写
- C-x h : *mark-whole-buffer* 全选
- M-w : *kill-ring-save* 复制

## 窗口相关

- C-x 2 : *split-window-vertically* 垂直拆分窗口
- C-x 3 : *split-window-horizontally*  水平拆分窗口
- C-x o : *other-window* 可以在多个窗口中切换，可以使用参数来控制选中下面的第几个窗口
- C-M-v : *scroll-other-window* 用来滚动下一个窗口

- C-x 4 b bufname : *switch-to-buffer-other-window* 在另外一个窗口中打开缓存
- C-x 4 C-o bufname : *display-buffer* 在另外一个窗口打开缓存，但不选中那个窗口
- C-x 4 f filename : *find-file-other-window* 在另外一个窗口打开文件
- C-x 4 d directory : *dired-other-window* 在另一个窗口打开文件夹
- C-x 4 m : *mail-other-window* 在另外一个窗口写邮件
- C-x 4 r filename : *find-file-read-only-other-window* 在另外一个窗口以只读方式打开文件
- C-x 0 : *delete-window* 关闭当前窗口
- C-x 1 : *delete-other-window* 关闭其它窗口
- C-x ^ : *enlarge-window* 增高当前窗口
- C-x { : *shrink-window-horizontally* 将当前窗口变窄
- C-x } : *enlarge-window-horizontally* 将当前窗口变宽
- C-x + : *balance-window* 所有窗口一样高