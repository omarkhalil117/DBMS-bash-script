#! /bin/bash

echo Welcome To OpenSource DBMS

MyDB=$1

# what about connecting to another database .. consider conecpt of 'use' in MySQL

select choice in CreateTable DeleteTable listTables ReadTable RenameTable InsertTable UpdateTable Back Exit
do
    
    case $choice in
        
        CreateTable)
            source ./TableScripts/CreateTable $MyDB
        ;;
        DeleteTable)
            source ./TableScripts/DeleteTable $MyDB
        ;;
        listTables)
            source ./TableScripts/listTables $MyDB
        ;;
        ReadTable)
            source ./TableScripts/ReadTable $MyDB
        ;;
        RenameTable)
            source ./TableScripts/RenameTable $MyDB
        ;;
        InsertTable)
            source ./TableScripts/InsertTable $MyDB
        ;;
        UpdateTable)
            source ./TableScripts/UpdateTable $MyDB
        ;;
        Back)
            source ./main 
        ;;
        Exit)
            exit
        ;;
        *)
            echo unknown input
        ;;
    esac
    
done
