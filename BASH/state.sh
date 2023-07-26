#!/bin/bash

echo "Enter the name of an Indian state:"
read state

case $state in
    "andrapradesh")
        echo "Telugu"
        ;;
    "assam")
        echo "Assamese"
        ;;
    "bihar" | "himachal pradesh")
        echo "Hindi"
        ;;
    "karnataka")
        echo "Kannada"
        ;;
    "kerala" | "lakshadweep")
        echo "Malayalam"
        ;;
    "tamil nadu")
        echo "Tamil"
        ;;
    *)
        echo "Unknown"
        ;;
esac

