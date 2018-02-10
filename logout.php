<?php
session_start();
unset($_SESSION['answer']);
unset($_SESSION['lol']);
unset($_SESSION['she']);
unset($_SESSION['he']);
header('Location: index.php');
