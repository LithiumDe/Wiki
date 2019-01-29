<?php
class File
{
    const TARGETDIR = "files/";//Target Folder
      
    function upload()
    {
        
        $fileName = $_FILES['uploadfile']['name'];//File Name
        $fileType = $_FILES['uploadfile']['type'];//Type of file
        $fileSize = $_FILES['uploadfile']['size'];//Size of file
        $path = self::TARGETDIR.$fileName;//Full path to file
        $fileTmp = $_FILES['uploadfile']['tmp_name'];//Temp name of file
        move_uploaded_file($fileTmp, $path); //Load file to target folder
              
        $db = new DB("localhost", "root", "", "Wiki");
        $db->connection();//Connect to database
        $sqlRecord = "INSERT INTO File(name,path,size) VALUES ('$fileName','$path','$fileSize')"; //Запрос на запись
        $db->sqlQuery($sqlRecord);//Record datas to DB
                                 
                
            
      
          
    }

    
    
}



