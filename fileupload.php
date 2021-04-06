<?php
$con = mysqli_connect("localhost","root","","assign3");
if (mysqli_connect_errno()) {
echo "Unable to connect to MySQL! ". mysqli_connect_error();
}
if (isset($_POST['save'])) {
$target_dir = "Uploaded_Files/";
$target_file = $target_dir . date("dmYhis") . basename($_FILES["file"]["name"]);
$uploadOk = 1;
$FileType = pathinfo($target_file,PATHINFO_EXTENSION);

if($FileType != "pdf" || $FileType != "rar" || $FileType != "zip") {
if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
$files = date("dmYhis") . basename($_FILES["file"]["name"]);
}else{
echo "Error Uploading File";
exit;
}
}else{
echo "File Not Supported";
exit;
}
$filename = $_POST['filename'];
$filepath = "Uploaded_Files/" . $files;
$sqli = "INSERT INTO `filelocation` (`filename`, `filepath`) VALUES ('{$filename}','{$filepath}')";
$result = mysqli_query($con,$sqli);
if ($result) {
echo "File has been uploaded";
};
}
?>
