<?php
namespace app\index\controller;

use think\Db;
use app\index\validate\About as AboutVali;

class About extends Base
{
    public function info(){
        $data = Db::name("about_us") ->find();
        $this ->assign("data",$data);
        return $this ->fetch();
    }

    public function editAbout(){
        $data = input("post.");
        if(!isset($data["id"]) || !is_numeric($data["id"])){
            $this ->error("参数有误");
        }
        $validate = new AboutVali();
        if (!$validate ->check($data)) {
            $this ->error($validate->getError());
        }
        $data["update_at"] = time();
        unset($data["file"]);
        $res = Db::name("about_us") ->where(["id"=>$data["id"]])
            ->update($data);
        if($res !== false){
            $this ->success("修改成功");
        }else{
            $this ->error("修改失败");
        }
    }
}