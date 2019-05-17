*** Settings ***
Documentation   User Login
Library         SeleniumLibrary
Library         util.py

***Variables***
${server_url}   http://39.107.96.138:3000/
${BROWSER}      chrome
${User}         user1
${Password}     123456


****Keywords***
user1成功登陆
    Open Browser    ${server_url}   ${BROWSER}
    Maximize Browser Window
    Click Element   css:a[href="/signin"]
    Input Text      id:name     ${User}
    Input Password  id:pass     ${Password}
    Click Element   css:input.span-primary
    Page Should Contain         ${User}

删除用户话题
    Click Element   css:a.user_avatar
    Click Element   css:div.cell a.topic_title
    Click Element   css:i.fa.fa-lg.fa-trash
    Handle Alert

***Test Cases***
删除帖子
    ${file_name}=   util.get_current_time
    Log To Console  "---------"${file_name}
    user1成功登陆
    删除用户话题
    [Teardown]  Capture Page Screenshot     图片${file_name}.png
    close BROWSER
    

# 安居客登录iframe 测试
#     Open Browser    https://login.anjuke.com/login/form     browser=chrome
#     Select Frame    id:iframeLoginIfm
#     Input Test      id:phoneIpt     13211122233