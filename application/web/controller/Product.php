<?php
namespace app\web\controller;

use think\Db;

class Product extends Base
{
    public function detail(){
        $id = input("get.id");
        halt($id);
    }

    public function productList(){
        $this ->getNew();
        $where = $this ->type();
        $list = Db::name("product")
            ->where(["is_del"=>0,"status"=>1])
            ->where($where)
            ->paginate(6,false,['query'=>request()->param()]);
        $this ->assign("list",$list);
        return $this ->fetch();
    }

    public function type(){
        $type_id = input("get.type_id");
        $where = [];
        if(!empty($type_id)){
            $where[] = ["type_id","eq",$type_id];
        }
        return $where;
    }
}