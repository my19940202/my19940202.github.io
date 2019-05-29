# 知识点-react

## react fiber 文档阅读

> [https://github.com/acdlite/react-fiber-architecture](https://github.com/acdlite/react-fiber-architecture)

`requestIdleCallback：`schedules a low priority function to be called during an idle period, and

`requestAnimationFrame：`schedules a high priority function to be called on the next animation frame.

## react 官方教程

[https://react.css88.com/docs/getting-started.html](https://react.css88.com/docs/getting-started.html)

## casting in typescript  \(角色分配\)

```text
// 常见的Element type
HTMLDivElement
HTMLInputElement
HTMLElement

//  函数申明时的type
getCustomizeResult: (val: any[]) => void;

//  组件的 props、state 都需要声明类型
interface PropsInterface {
}
interface StateInterface {
    idx: number | null;
}
class Wrapper extends React.Component<PropsInterface, StateInterface> {
    // class申明了下一些tmp属性便于调用，也要申明type
    private addrList: any[];
    private local: any;
    constructor(props: PropsInterface) {
        super(props);
    }

    render() {
        return (
            <div>fuck you</div>
        )
    }

    // props 监控变化
    componentWillReceiveProps(nextProps: PropsInterface) {
    }
}
```

super\(\) 的作用 [https://codesandbox.io/s/q98rlj068q](https://codesandbox.io/s/q98rlj068q)

```text
改变上下文的指向
用法1：super作为函数调用时，代表父类的构造函数。ES6 要求，子类的构造函数必须执行一次super函数。

用法2：super作为对象时，在普通方法中，指向父类的原型对象；在静态方法中，指向父类
```

propTypes : {

```text
//数据不允许为空

name: PropTypes.string.isRequired
```

}

## reactjs life cycle![](.gitbook/assets/download%20%281%29.png)

```text
// 父组件更新子组件的时候 该函数被触发
componentWillReceiveProps(nextProps) {
    if (nextProps.idx !== this.props.idx) {
        this.drawAddr(this.props.markers, nextProps.idx);
    } else {
        if (util.isDifferent(nextProps.markers, this.props.markers)) {
            this.drawAddr(nextProps.markers);
        }
    }
}


// react组件挂到临时节点上 callback 渲染完 再去处理
let tempDiv = document.createElement('div');
ReactDOM.render(<InfoWindowComp info={info}/>, tempDiv, function() {
    callback(tempDiv);
});

// 子组件向父组件通信, 子组件执行了对应
<Parent>
    <Child callback={this.callback}><Child>
</Parent>
子组件要回调的时候: me.props.callback(result)
```

> react教程参考: [http://www.css88.com/react/docs/hello-world.html](http://www.css88.com/react/docs/hello-world.html)

**reactNode 的创建和使用的 demo**

> [https://codesandbox.io/u/my19940202](https://codesandbox.io/u/my19940202)

