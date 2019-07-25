<?php
namespace app\web\controller;

use think\Db;

class Article extends Base
{
    public function detail(){
        $id = input("get.id");
        if(!is_numeric($id)){
            $this ->error("参数有误");
        }
        $data = Db::name("article")
            ->where(["id"=>$id,"is_del"=>0,"status"=>1])
            ->find();
        if(empty($data)){
            $this ->error("获取失败");
        }
        $this ->assign("data",$data);
        $this ->getNew($id);
        return $this ->fetch();
    }
    
    
    public function articleList(){
        $where = $this ->search();
        $list = Db::name("article")
            ->where(["is_del"=>0,"status"=>1])
            ->where($where)
            ->paginate(config("app.page_num"),false,['query'=>request()->param()]);
        $this ->assign("list",$list);
        $this ->getNew();
        return $this ->fetch();
    }
    
    public function search(){
        $title = input("get.title");
        $where = [];
        if(!empty($title)){
            $where[] = ["title","like","%".$title."%"];
            $this ->assign("title",$title);
        }
        return $where;
    }
}