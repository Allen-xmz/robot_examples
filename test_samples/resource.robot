***Settings***
Documentation       常用操作
Library             SeleniumLibrary
Library             util.py
Library             register_locator.py    

***Variables***
${url}          http://39.107.96.138:3000/
${browser}      chrome
${valid_name}   zhangsan
${valid_pass}   123456
${valid_email}  zhangsan@rr.com


***Keywords***
打开浏览器到注册页面
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Click Element   css:a[href="/signup"]

截屏并清除cookies
    ${file_name}=               util.get_current_time
    Capture Page Screenshot     ${file_name}.png
    Delete All Cookies

关闭浏览器
    close Browser

输入用户名
    [Arguments]     ${username}
    ${name_id}=     get_username
    Input Text      id:${name_id}   ${username}
输入密码
    [Arguments]     ${password}
    Input Text      id:pass         ${password}
确认密码
    [Arguments]     ${repass}
    Input Text      id:re_pass       ${repass}
输入电子邮件
    [Arguments]     ${email}
    Input Text      id:email        ${email}

