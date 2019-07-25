<?php
namespace app\index\validate;


class Type extends Base
{
    protected $rule = [
        'title' => 'require|max:50',
        'img' => 'require',
        'intro' => 'require',
        'sort' => 'require',
    ];

    protected $field = [
        'title' => '标题',
        'img' => '图片',
        'intro' => '简介',
        'sort' => '排序',
    ];


}