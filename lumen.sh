#!/bin/bash

if [ -z "$1" ] || [ $1 == "--help" ] || [ $1 == "help" ]
then
    echo -e "Command List                                              | Descriptions"
    echo -e "\e[32m./lumen.sh make:controller [NameController]              \e[35mCreate new controller"
    echo -e "\e[32m./lumen.sh make:controller [NameMiddleware]              \e[35mCreate new middleware"
    echo -e "\e[32m./lumen.sh serve [localhost:8000]                        \e[35mStart Lumen Service"
    echo -e "\e[32m./lumen.sh --help || help                                \e[35mShow help list"

elif [ $1 == 'make:controller' ]
then
    if [ -z "$2" ]
    then
        echo "Please insert new controller name."
    else
        cd app/Http/Controllers
        cp ExampleController.php $2.php
        sed -i "s/ExampleController/$2/" $2.php
        echo "$2 has created."
    fi

elif [ $1 == 'make:middleware' ]
then
    if [ -z "$2" ]
    then
        echo "Please insert new middleware name."
    else
        cd app/Http/Middleware
        cp ExampleMiddleware.php $2.php
        sed -i "s/ExampleMiddleware/$2/" $2.php
        echo "$2 has created."
    fi

elif [ $1 == 'serve' ]
then
    if [ -z "$2" ]
    then
        echo "Please insert host:port"
    else
        php -S $2 -t public/
    fi
else
    echo -e "\e[91mCommand not found!"
    echo "--help for more command list"
fi