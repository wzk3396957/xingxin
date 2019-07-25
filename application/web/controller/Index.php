<?php
namespace app\web\controller;

use think\Db;

class Index extends Base
{
    public function index()
    {
        $this ->getBanner();
        $this ->getProduct();
        $this ->getArticle();
        return $this->fetch();
    }
}
