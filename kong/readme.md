https://blog.csdn.net/monkeyblog/article/details/90247043


easy demo 
https://www.cnblogs.com/sunhongleibibi/p/12035508.html


kong auth
https://www.xiaomastack.com/2019/08/21/KongAuth/


acl plugin
https://blog.csdn.net/chiqiao5151/article/details/100725178?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase



Service：
    Service 顾名思义，就是我们自己定义的上游服务，通过Kong匹配到相应的请求要转发的地方

    Service 可以与下面的Route进行关联，一个Service可以有很多Route，匹配到的Route就会转发到Service中，
    当然中间也会通过Plugin的处理，增加或者减少一些相应的Header或者其他信息

    Service可以是一个实际的地址，也可以是Kong内部提供的upstream object

Route：
    Route 字面意思就是路由，实际就是我们通过定义一些规则来匹配客户端的请求，每个路由都会关联一个Service,
    并且Service可以关联多个Route，当匹配到客户端的请求时，每个请求都会被代理到其配置的Service中

    Route作为客户端的入口，通过将Route和Service的松耦合，可以通过hosts path等规则的配置，最终让请求到不同的Service中

    例如，我们规定api.example.com 和 api.service.com的登录请求都能够代理到123.11.11.11:8000端口上，那我们可以通过hosts和path来路由

    首先，创建一个Service s1，其相应的host和port以及协议为http://123.11.11.11:8000
    然后，创建一个Route，关联的Service为s1，其hosts为[api.service.com, api.example.com],path为login
    最后，将域名api.example.com和api.service.com的请求转到到我们的Kong集群上，也就是我们上面一节中通过Nginx配置的请求地址
    那么，当我们请求api.example.com/login和api.service.com/login时，其通过Route匹配，然后转发到Service，最终将会请求我们自己的服务。

Upstream：


    这是指您自己的API /服务位于Kong后面，客户端请求被转发到该服务器。

    相当于Kong提供了一个负载的功能，基于Nginx的虚拟主机的方式做的负载功能

    当我们部署集群时，一个单独的地址不足以满足我们的时候，我们可以使用Kong的upstream来进行设置

    首先在service中指定host的时候，可以指定为我们的upstream定义的hostname

    我们在创建upstream时指定名字，然后指定solts(暂时不确定具体作用)，upstream可以进行健康检查等系列操作。这里先不开启（还没有研究）

    然后我们可以再创建target类型，将target绑定到upstream上，那么基本上我们部署集群时，也可以使用

Target：

    target 就是在upstream进行负载均衡的终端，当我们部署集群时，需要将每个节点作为一个target，并设置负载的权重，当然也可以通过upstream的设置对target进行健康检查。
    当我们使用upstream时，整个路线是 Route >> Service >> Upstream >> Target 

API：
    用于表示您的上游服务的传统实体。自0.13.0起弃用服务。这里就不在深入了解

Consumer：

    Consumer 可以代表一个服务，可以代表一个用户，也可以代表消费者，可以根据我们自己的需求来定义

    可以将一个Consumer对应到实际应用中的一个用户，也可以只是作为一个Service的请求消费者

    Consumer具体可以在Plugin使用时再做深入了解

Plugin：
    在请求被代理到上游API之前或之后执行Kong内的动作的插件。

    例如，请求之前的Authentication或者是请求限流插件的使用

    Plugin可以和Service绑定，也可以和Route以及Consumer进行关联。

    具体的使用可以根据在创建Plugin以及后面的修改时，具体与Consumer，Service，Route绑定关系时，可参考



