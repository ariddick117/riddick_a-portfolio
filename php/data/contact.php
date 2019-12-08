<?php 

if(empty($_POST)){
    echo 'no';
    exit;
}
$name = '';
$email = '';
$subject = '';
$message = '';
$recipient = 'inderjitsingh.sing@gmail.com';
if(isset($_POST['name'])){
    $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
}
if(isset($_POST['email'])){
    $email = str_replace(array("\r","\n","%0a","%0d"),'',$_POST['email']);
    $email = filter_var($email,FILTER_VALIDATE_EMAIL);
}
if(isset($_POST['subject'])){
    $subject = filter_var($_POST['subject'],FILTER_SANITIZE_STRING);
}
if(isset($_POST['message'])){
    $message = $_POST['message'];
}
//Send out email
$headers = array(
    'From'=>'inderjitsingh.sing@gmail.com',
    'Reply-To'=>$name.'<'.$email.'>'
);
if(mail($recipient, $subject, $message, $headers)){
    echo '<p>Thank you for your email, '.$name.'</p>';
}else{
    echo '<p>try again you have done something wrong</p>';
}
?>