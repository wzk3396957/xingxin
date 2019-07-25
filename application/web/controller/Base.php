<?php
/**
 * Created by PhpStorm.
 * User: D.Chen
 * Date: 2018/12/6
 * Time: 15:58
 */

namespace app\web\controller;

use think\Controller;
use think\facade\Session;
use think\facade\Request;
use think\Db;

class Base extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this ->getAboutUs();
        $this ->getType();
    }

    //获取Banner
    public function getBanner(){
        $banner = Db::name("banner")
            ->where(["is_del" =>0,"status" =>1])
            ->order("sort desc")
            ->select();
        $this ->assign("banner",$banner);
    }

    //获取分类
    public function getType(){
        $type = Db::name("type")
            ->where(["is_del" =>0,"status" =>1])
            ->order("sort desc")
            ->select();
        $this ->assign("type",$type);
    }

    //获取产品
    public function getProduct(){
        $product = Db::name("product") ->alias("t1")
            ->join("xx_type t2","t1.type_id = t2.id")
            ->where(["t1.is_del" =>0,"t1.status" =>1])
            ->order("t1.sort desc")
            ->field("t1.*,t2.title as type")
            ->select();
        $this ->assign("product",$product);
    }

    //获取新闻
    public function getArticle(){
        $article = Db::name("article")
            ->where(["is_del" =>0,"status" =>1])
            ->order("sort desc")
            ->select();
        $this ->assign("article",$article);
    }

    //获取公司信息
    public function getAboutUs(){
        $about_us = Db::name("about_us")
            ->find();
        $this ->assign("about_us",$about_us);
    }

    //获取热点新闻
    public function getNew($id = ""){
        $new = Db::name("article")
            ->where(["is_del"=>0,"status"=>1])
            ->where("id","neq",$id)
            ->order("id desc")
            ->limit(3)
            ->select();
        $this ->assign("new",$new);
    }
}