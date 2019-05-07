function toggleUserButton() {
    $("#userinfo li").on("click", function(e) {
        var t = $($.getTarget(e))
          , n = t.text();
        switch ($("#userinfo li").each(function() {
            $(this).css("backgroundColor", ""),
            $(this).css("color", "black")
        }),
        t.css("color", "white"),
        t.css("backgroundColor", "#E91E63"),
        n.toString().trim()) {
        case "会员中心":
            $(".user-center").show(),
            $(".user-pwd").hide(),
            $(".user-comment").hide(),
            $(".user-logininglog").hide(),
            $(".user-moviecol").hide();
            break;
        case "修改密码":
            $(".user-center").hide(),
            $(".user-pwd").show(),
            $(".user-comment").hide(),
            $(".user-logininglog").hide(),
            $(".user-moviecol").hide();
            break;
        case "评论记录":
            $(".user-center").hide(),
            $(".user-pwd").hide(),
            $(".user-comment").show(),
            $(".user-logininglog").hide(),
            $(".user-moviecol").hide();
            break;
        case "登录日志":
            $(".user-center").hide(),
            $(".user-pwd").hide(),
            $(".user-comment").hide(),
            $(".user-logininglog").show(),
            $(".user-moviecol").hide();
            break;
        case "收藏电影":
            $(".user-center").hide(),
            $(".user-pwd").hide(),
            $(".user-comment").hide(),
            $(".user-logininglog").hide(),
            $(".user-moviecol").show()
        }
    })
}
function checkInputParas() {
    var e = $("#email").val()
      , t = $("#phone").val();
    return null == e || void 0 === e || "" === e ? ($("#emaillb").html('<span style="color: red">邮箱不能为空</span>'),
    $("#email").get(0).focus(),
    !1) : $.isString(e) && !e.match(/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/g) ? ($("#emaillb").html('<span style="color: red">邮箱格式错误</span>'),
    $("#email").get(0).focus(),
    !1) : ($("#emaillb").html("邮箱"),
    null == t || void 0 === t || "" === t ? ($("#phonelb").html('<span style="color: red">手机不能为空</span>'),
    $("#phone").get(0).focus(),
    !1) : $.isString(t) && !t.match(/(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/) ? ($("#phonelb").html('<span style="color: red">手机格式有误</span>'),
    $("#phone").get(0).focus(),
    !1) : ($("#phonelb").html("手机"),
    !0))
}
function addEvent() {
    $("input").on("blur", function(e) {
        if ($("#emaillb").html("邮箱"),
        $("#phonelb").html("手机"),
        !checkInputParas())
            return !1
    }),
    $("#userino-form").on("submit", function(e) {
        if ($.preventDefault(e),
        !checkInputParas())
            return !1;
        $.ajax({
            url: "/user",
            type: "POST",
            dataType: "string",
            data: $.serialize("userino-form"),
            success: function(e) {
                window.location.href = "/login"
            }
        })
    }),
    $("#upload-form button").on("click", function(e) {
        $.preventDefault(e);
        var t = $($.getTarget(e)).text();
        switch ($("#upload-file-title").html("请选择要上传的图片"),
        t) {
        case "取消":
            $("#toastWindow").hide();
            break;
        case "点击上传":
            var n = new FormData
              , o = document.querySelector("#upload-file").files[0];
            if (n.append("pic", o),
            !n || !o)
                return void $("#upload-file-title").html('<span style="color: red">请至少选择一个要上传的文件</span>');
            var s = o.type;
            if (!["image/jpg", "image/jpeg", "image/png", "image/pjpeg", "image/gif", "image/bmp", "image/x-png"].contains(s))
                return void $("#upload-file-title").html('<span style="color: red">不支持的文件格式</span>');
            var a = new XMLHttpRequest;
            a.open("POST", "/user/upload"),
            a.onreadystatechange = function(e) {
                if (4 === a.readyState && 200 === a.status) {
                    var t = JSON.parse(a.responseText);
                    if (t && 1 === t.code) {
                        var n = t.msg;
                        $("#toastWindow").hide(),
                        $("#logo").attr("src", n),
                        window.location.href = "/"
                    }
                }
            }
            ,
            a.send(n)
        }
    }),
    $("#upload").on("click", function(e) {
        $.preventDefault(e),
        $("#toastWindow").show()
    }),
    $("#pwd-form").on("submit", function(e) {
        $.preventDefault(e);
        var t = $("#pwd1").val()
          , n = $("#pwd2").val();
        return null == t || void 0 === t || "" === t ? ($("#pwd1lb").html(""),
        void $("#pwd1lb").html('<span style="color: red">密码不能为空</span>')) : $.isString(t) && t.length < 5 ? ($("#pwd1lb").html(""),
        $("#pwd1lb").html('<span style="color: red">原始密码错误</span>'),
        $("#pwd1").val(""),
        void $("#pwd2").val("")) : ($("#pwd1lb").html("旧密码"),
        null == n || void 0 === n || "" === n ? ($("#pwd2lb").html(""),
        void $("#pwd2lb").html('<span style="color: red">确认密码不能为空</span>')) : $.isString(n) && n === t ? ($("#pwd2lb").html(""),
        void $("#pwd2lb").html('<span style="color: red">新密码不能和旧密码相同</span>')) : void ($.isString(n) && n.length < 5 ? $("#pwd2lb").html('<span style="color: red">新密码长度不能低于5位</span>') : ($.ajax({
            url: "/user",
            type: "POST",
            data: $.serialize("pwd-form"),
            success: function(e) {
                if (console.log(e),
                e && 0 === e.code)
                    return $("#pwd1lb").html('<span style="color: red">原始密码错误</span>'),
                    $("#pwd1").val(""),
                    void $("#pwd2").val("");
                $.ajax({
                    url: "/user",
                    type: "POST",
                    data: $.serialize("pwd-form"),
                    dataType: "string",
                    success: function(e) {
                        e && (window.location.href = "/login")
                    }
                })
            }
        }),
        $("#pwd2lb").html("新密码"))))
    }),
    $("#comment-logs").on("click", function(e) {
        "" === $("#pageNum").text().trim() ? $("#pageNum").text("1") : $("#pageNum").text().trim(),
        $.ajax({
            url: "/comment/1",
            type: "GET",
            success: function(e) {
                if (e && 1 === e.code) {
                    var t = getCommentsStr(e.comments);
                    if (!t || "" == t)
                        return;
                    $("#comments").html(t),
                    $("#pageNum").text(e.pageNum)
                }
            }
        })
    }),
    $("#comments-page li").on("click", function(e) {
        $.preventDefault(e);
        var t = $($.getTarget(e)).text()
          , n = $("#pageNow").text()
          , o = $("#pageNum").text();
        switch (o = $.isString(o) ? parseInt(o) : o,
        n = $.isString(n) ? parseInt(n) : n,
        t) {
        case "首页":
            n = 1;
            break;
        case "上一页":
            1 < n && (n -= 1);
            break;
        case "下一页":
            n < o && (n += 1);
            break;
        case "尾页":
            n = o
        }
        $("#pageNow").html(n),
        $.ajax({
            url: "/comment/" + n,
            type: "GET",
            dataType: "json",
            data: "",
            success: function(e) {
                if (e && 1 === e.code) {
                    var t = getCommentsStr(e.comments);
                    $("#comments").html(t)
                }
            }
        })
    }),
    $("#login-logs").on("click", function(e) {
        $.ajax({
            url: "/userlog",
            type: "POST",
            dataType: "json",
            data: {
                data: "logs"
            },
            success: function(e) {
                if (e && 1 === e.code) {
                    for (var t, n = e.userlogs, o = 0, s = n.length, a = "<tr>\n                        <td>编号</td>\n                        <td>登录时间</td>\n                        <td>登录IP</td>\n                        <td>登录地址</td>\n                    </tr>"; o < s; o++)
                        t = n[o],
                        a += o % 2 == 0 ? ' <tr class="change">\n                    <td>' + (o + 1) + "</td>\n                    <td>" + t.login_time + "</td>\n                    <td>" + t.ip + "</td>\n                    <td>" + t.address + "</td>\n                    </tr>" : ' <tr class="change" style="background-color: #ECF6EE;">\n                    <td>' + (o + 1) + "</td>\n                    <td>" + t.login_time + "</td>\n                    <td>" + t.ip + "</td>\n                    <td>" + t.address + "</td>\n                    </tr>";
                    $("#userlogs-con").html(a)
                }
            }
        })
    }),
    $("#col-movie").on("click", function(e) {
        $.ajax({
            url: "/colmovie/1",
            data: {
                tag: "comment"
            },
            dataType: "json",
            type: "POST",
            success: function(e) {
                if (e && 1 === e.code) {
                    var t = ""
                      , n = e.msg;
                    if (!n.length)
                        return;
                    n.forEach(function(e) {
                        t += ' <div class="moviecol-con">\n                        <div class="moviecol-con-l" onclick="window.open(\'' + e.url + '\')">\n                        </div>\n                        <div class="moviecol-con-r">\n                        <div class="moviecol-con-title">\n                        <span class="movie-title">\n                        ' + e.title + '\n                </span>\n                    <a class="movie-play" href="' + e.url + '">\n                                    ▶播放影片\n                    </a>\n                    </div>\n                    <span class="moviecol-con-desc">\n                        ' + e.info + "\n                </span>\n                    </div>\n                    </div>"
                    }),
                    $("#user-colmovie").html(t)
                }
            }
        })
    })
}
function getCommentsStr(e) {
    for (var t, n = 0, o = e.length, s = ""; n < o; n++)
        null !== (t = e[n]) && (s += '<div class="comment-content">\n                    <div class="userlogo">\n                        <img src="' + t.face + '" alt="">\n                    </div>\n                    <div class="usercontent">\n                        <div class="usercontent-title">\n                            <a href="/user/">' + t.uname + "</a><span>评论于 " + t.addtime + '</span>\n                        </div>\n                        <div class="usercontent-con">\n                            ' + t.content + "\n                        </div>\n                    </div>\n                </div>");
    return s
}
window.onload = function() {
    toggleUserButton()
}
,
addEvent()