<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aue.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script  type="text/javascript" src="js/vue.min.js"></script>
	<script  type="text/javascript" src="js/vue-resource.min.js""></script>
  </head>
  
  <body>
  <!-- <div id="app">
  	<p v-if="xx">hhhh</p>
  <p>{{ message }}</p>
</div>
	
	<script>
	new Vue({
	  el: '#app',
	  data: {
	    message: 'Hello Vue.js!',
	    xx:false
	  }
	})
	</script> -->
	<!-- <div id="app">
  <p>原始字符串: {{ message }}</p>
  <p>计算后反转字符串: {{ reversedMessage }}</p>
</div>

<script>
var vm = new Vue({
  el: '#app',
  data: {
    message: 'Runoob!'
  },
  computed: {
    // 计算属性的 getter
    reversedMessage: function () {
      // `this` 指向 vm 实例
      return this.message.split('').reverse().join('')
    }
  }
})
</script> -->
<div id="box">
	<input type="button" @click="post()" value="点我异步获取数据(Post)">
</div>
<script type = "text/javascript">
window.onload = function(){
	var vm = new Vue({
	    el:'#box',
	    data:{
	        msg:'Hello World!',
	    },
	    methods:{
	        post:function(){
	            //发送 post 请求
	            this.$http.post('/try/ajax/demo_test_post.php',{name:"菜鸟教程",url:"http://www.runoob.com"},{emulateJSON:true}).then(function(res){
                    document.write(res.body);    
                },function(res){
                    console.log(res.status);
                });
	        }
	    }
	});
}
</script>
  </body>
</html>
