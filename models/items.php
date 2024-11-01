<?php
class categories extends Db
{
    public function getAllItem()
    {
        $sql = self::$connection->prepare("SELECT * FROM `items`");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_assoc();
        return $items; //return an array
    }
}
