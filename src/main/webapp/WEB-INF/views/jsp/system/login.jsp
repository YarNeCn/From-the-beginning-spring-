<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <title>Everythings</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/common/icon/title.jpg" type="image/x-icon" />
    <script src="${pageContext.request.contextPath}/common/pubStyle.js"
            type="text/javascript" charset="utf-8"></script>
</head>
<body>
<iframe src="${pageContext.request.contextPath}/common/background/baiyun.html" allowtransparency="true" style="position: absolute"  title="test" frameborder="0"  width="100%" height="100%" scrolling="no"></iframe>
<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login">
    <div class="layadmin-user-login-main">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>Everythings</h2>
            <p>${error}</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <form @submit.prevent="submit" action="" method="post">
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
                <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
                <input type="password" name="password" id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
            </div>

            <div class="layui-form-item">
                <div class="layui-row">
                    <div class="layui-col-xs7">
                        <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>
                        <input type="text" name="verCode"  id="LAY-user-login-vercode" lay-verify="required" placeholder="图形验证码" class="layui-input">
                    </div>
                    <div class="layui-col-xs5">
                        <div style="margin-left: 10px;">
                            <img src="${pageContext.request.contextPath}/getCode" id="codeImg" onclick="flushCode()" style="height: 38px;" class="layadmin-user-login-codeimg" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-form-item" style="margin-bottom: 20px;">
                <input type="checkbox" value="true" name="rememberMe" lay-skin="primary" title="记住我">
             <%--   <a lay-href="/user/forget" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码？</a>--%>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" type="submit" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
            </div>
            </form>
            <div class="layui-trans layui-form-item layadmin-user-login-other">
                <label>社交账号登入</label>
                <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
                <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
                <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>
           <%--     <a lay-href="/user/reg" class="layadmin-user-jump-change layadmin-link">注册帐号</a>--%>
            </div>
        </div>
    </div>

    <div class="layui-trans layadmin-user-login-footer">
        <p>© 2018 <a href="https://github.com/YarNeCn/From-the-beginning-spring-.git" target="_blank">yarne.cn</a></p>
    </div>
</div>
<script src="${pageContext.request.contextPath}/common/pubScript.js"
        type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    function flushCode() {
        $("#codeImg").attr('src','${pageContext.request.contextPath}/getCode?'+Math.random());
    }
</script>
</body>
</html>
