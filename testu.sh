#! /bin/bash

case ${1,,} in
       vboxuser | administrator)
             echo "You are the boss here!"
             ;;       
       help)
             echo "just enter your username!"
             ;;


       *) 
              echo "hello there. You are not my boss"
esac
        
