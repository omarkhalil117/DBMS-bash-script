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
            source ./DeleteTable
        ;;
        listTables)
            source ./listTables
        ;;
        ReadTable)
            source ./ReadTable
        ;;
        RenameTable)
            source ./RenameTable
        ;;
        InsertTable)
            source ./TableScripts/InsertTable $MyDB
        ;;
        UpdateTable)
            #source ./Update
        ;;
        Back)
            # source ./main #call main menue script
        ;;
        Exit)
            exit
        ;;
        *)
        ;;
    esac
    
done
