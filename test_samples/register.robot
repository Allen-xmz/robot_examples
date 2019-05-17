****Settings***
Documentation       主要测试场景
Resource            Resource.robot
Library             SeleniumLibrary
Suite Setup         打开浏览器到注册页面
Suite Teardown      关闭浏览器
Test Template       用户注册模板
Test Teardown       截屏并清除cookies

***Test Cases***        username        password        repassword      email
empty username          ${Empty}        ${valid_name}   ${valid_name}   ${valid_email}
empty password          ${valid_name}   ${Empty}        ${valid_name}   ${valid_email}
empty repassword        ${valid_name}   ${valid_name}   ${empty}        ${valid_email}
empty email             ${valid_name}   ${valid_name}   ${valid_name}   ${empty}
valid case              ${valid_name}   ${valid_name}   ${valid_name}   ${valid_email}


***Keywords***
用户注册模板
    [Arguments]     ${username}     ${password}     ${repassword}       ${email}
    输入用户名      ${username}
    输入密码        ${password}
    确认密码        ${repassword}
    输入电子邮件     ${email}