<?php
namespace app\index\controller;

use think\Db;
use app\index\validate\Product as ProductVali;

class Product extends Base
{
    public function index(){
        $list = Db::name("product") ->alias("t1")
            ->join("xx_type t2","t1.type_id = t2.id")
            ->where(["t1.is_del"=>0])
            ->order("t1.id desc")
            ->field("t1.*,t2.title as type")
            ->paginate(config("app.page_num"));
        $this ->assign("list",$list);
        return $this ->fetch();
    }

    public function addProduct(){
        if($this->request->isPost()){
            $this ->doAddProduct();
        }
        $type = Db::name("type")
            ->where(["is_del" =>0,"status" =>1])
            ->select();
        $this ->assign("type",$type);
        return $this ->fetch();
    }

    private function doAddProduct(){
        $data = input("post.");
        $validate = new ProductVali();
        if (!$validate ->check($data)) {
            $this ->error($validate->getError());
        }
        $data["create_at"] = time();
        unset($data["file"]);
        $res = Db::name("product") ->insert($data);
        if($res){
            $this ->success("添加成功");
        }else{
            $this ->error("添加失败");
        }
    }

    public function delProduct(){
        $id = input("post.id");
        if(!is_numeric($id)){
            $this ->error("参数有误");
        }
        $res = Db::name("product") ->where(["id"=>$id]) ->update(["is_del"=>1]);
        if($res){
            $this ->success("删除成功");
        }else{
            $this ->error("删除失败");
        }
    }

    public function editProduct(){
        if($this->request->isPost()){
            $this ->doEditProduct();
        }
        $id = input("get.id");
        if(!is_numeric($id)){
            $this ->error("参数有误");
        }
        $data = Db::name("product") ->where(["id"=>$id,"is_del"=>0]) ->find();
        if(empty($data)){
            $this ->error("获取失败");
        }
        $this ->assign("data",$data);
        $type = Db::name("type")
            ->where(["is_del" =>0,"status" =>1])
            ->select();
        $this ->assign("type",$type);
        return $this ->fetch();
    }

    private function doEditProduct(){
        $data = input("post.");
        if(!isset($data["id"]) || empty($data["id"])){
            $this ->error("参数有误");
        }
        $validate = new ProductVali();
        if (!$validate ->check($data)) {
            $this ->error($validate->getError());
        }

        unset($data["file"]);
        $res = Db::name("product")
            ->where(["id"=>$data["id"]])
            ->update($data);
        if($res !== false){
            $this ->success("修改成功");
        }else{
            $this ->error("修改失败");
        }
    }

    public function updProductStatus(){
        $id = input("post.id");
        if(!is_numeric($id)){
            $this ->error("参数有误");
        }
        $status = Db::name("product") ->where(["id"=>$id]) ->value("status");
        if($status === 1){
            $status = 0;
        }elseif($status === 0){
            $status = 1;
        }else{
            $this ->error("权限获取失败");
        }
        $res = Db::name("product") ->where(["id"=>$id]) ->update(["status"=>$status]);
        if($res){
            $this ->success("修改成功");
        }else{
            $this ->error("修改失败");
        }
    }
}