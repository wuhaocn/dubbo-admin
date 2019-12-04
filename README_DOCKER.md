
### docker 打包
1. 下载代码: `git clone https://github.com/apache/dubbo-admin.git`
2. 在 `dubbo-admin-server/src/main/resources/application.properties`中指定注册中心地址
3. 构建
   mvn clean package -DskipTests 
4. 拷贝资源文件 
   拷贝 dubbo-admin-distribution/target/dubbo-admin-0.1.jar 至 dubbo-admin/docker/0.1.0

5. 打包
    执行docker-build.sh

6. 运行
 访问 `http://localhost:8080`

### 生产环境配置

1. 下载代码: `git clone https://github.com/apache/dubbo-admin.git`
2. 在 `dubbo-admin-server/src/main/resources/application.properties`中指定注册中心地址
3. 构建

   mvn clean package -DskipTests
4. 启动 
   * `mvn --projects dubbo-admin-server spring-boot:run`   
   或者   
   * `cd dubbo-admin-distribution/target; java -jar dubbo-admin-0.1.jar`
5. 访问 `http://localhost:8080`
---

### 开发环境配置
* 运行`dubbo admin server`
   `dubbo admin server`是一个标准的spring boot项目, 可以在任何java IDE中运行它
* 运行`dubbo admin ui`
  `dubbo admin ui`由npm管理和构建，在开发环境中，可以单独运行: `npm run dev`
* 页面访问
  访问 `http://localhost:8081`, 由于前后端分开部署，前端支持热加载，任何页面的修改都可以实时反馈，不需要重启应用。
 * 跨域问题
    为了方便开发，我们提供了这种前后端分离的部署模式，主要的好处是支持前端热部署，在这种模式下，前端会通过8080端口访问后端的restful api接口，获取数据, 这将导致跨域访问的问题。因此我们在`dubbo-admin-ui/config/index.js`添加了支持跨域访问的配置,当前端通过`npm run dev`单独启动时，这些配置将被激活，允许跨域访问

### Swagger 支持

部署完成后，可以访问 http://localhost:8080/swagger-ui.html 来查看所有的restful api
