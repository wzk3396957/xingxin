<?php
namespace app\web\validate;

use app\index\validate\Base;

class Contact extends Base
{
    protected $rule = [
        'zt' => 'require',
        'tel' => 'require',
        'content' => 'require',
        'email' => 'require',
        'name' => 'require',
    ];

    protected $field = [
        'zt' => '主题',
        'tel' => '电话',
        'content' => '内容',
        'email' => '邮箱',
        'name' => '姓名',
    ];


}