#!/bin/bash

if [ -z "$1" ] || [ $1 == "--help" ]
then
    echo -e "Command List                                              | Descriptions"
    echo -e "\e[32m./lumen.sh make:controller [controller_name]              \e[35mCreate new controller"
elif [ $1 == 'yoo' ]
then
    echo "this is yoo"
fi