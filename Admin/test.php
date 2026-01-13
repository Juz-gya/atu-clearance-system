<?php
// Import PHPMailer classes into the global namespace 

use PHPMailer\PHPMailer\PHPMailer; 
use PHPMailer\PHPMailer\Exception; 
 
// Include PHPMailer library files 
require 'PHPMailer/Exception.php'; 
require 'PHPMailer/PHPMailer.php'; 
require 'PHPMailer/SMTP.php'; 
 
// Create an instance of PHPMailer class 

$mail = new PHPMailer;



try{
    $mail->isSMTP();
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username = 'davidtettenartey2000@gmail.com';
    $mail->Password = 'Dav*id12tt';                               // SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587; 

    //Recipients
    $mail->setFrom(Database::USERNAME,'STUDENT CLEARANCE');
    $mail->addAddress('joeatsiegbi@gmail.com', 'STUDENT CLEARANCE');     // Add a recipient
    // $mail->addAddress('jonathanatsiegbi@gmail.com', 'KEEN');               // Name is optional
   

     // Content
    $mail->isHTML(true);  
    $mail->Subject ='You have been cleared on fees';
    $mail->Body    =  ''.$name. ' is reporting an issue<br>'
    
   

    
    $mail->send();
    echo $user->showMessage('success','Successfully sent we will send you a feedback with a solution </strong>');
}

catch(Exception $e){
    echo $user->showMessage('danger','Something went worng plase check your internet connection and try again later!');
}

