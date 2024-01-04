#!/bin/bash

USERNAME="thuphuong"
PASSWORD="12"
LOGIN_URL="http://localhost"
INFO_URL="http://localhost/info.php"

login_response=$(curl -c cookies.txt -d "username=$USERNAME&password=$PASSWORD" $LOGIN_URL)

http_status=$(curl -s -o /dev/null -w "%{http_code}" -b cookies.txt $INFO_URL)

if [ "$http_status" = "200" ]; then
    echo "Đăng nhập thành công! Điều hướng đến trang info."
    curl -b cookies.txt -L $INFO_URL
else
    echo "Đăng nhập thất bại. Vui lòng kiểm tra thông tin đăng nhập."
fi

