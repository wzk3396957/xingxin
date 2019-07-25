<?php
namespace app\index\validate;


class Banner extends Base
{
    protected $rule = [
        'title' => 'require|max:50',
        'img' => 'require',
        'sort' => 'require|number',
    ];

    protected $field = [
        'title' => '标题',
        'img' => '图片',
        'sort' => '排序',
    ];


}