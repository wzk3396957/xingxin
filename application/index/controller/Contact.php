<?php
namespace app\index\controller;

use think\Db;

class Contact extends Base
{
    public function index(){
        $list = Db::name("contact")
            ->order("id desc")
            ->paginate(config("app.page_num"),false,['query'=>request()->param()]);
        $this ->assign("list",$list);
        return $this ->fetch();
    }
}