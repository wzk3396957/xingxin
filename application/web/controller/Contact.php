<?php
namespace app\web\controller;

use think\Db;
use app\web\validate\Contact as ContactVail;

class Contact extends Base
{
    public function index(){
        $this ->getNew();
        return $this ->fetch();
    }
    
    public function addContact(){
        $data = input("post.");
        $validate = new ContactVail();
        if (!$validate ->check($data)) {
            $this ->error($validate->getError());
        }
        $data["create_at"] = time();
        $res = Db::name("contact") ->insert($data);
        if($res){
            $this ->success("提交成功");
        }else{
            $this ->error("提交失败");
        }
    }
}