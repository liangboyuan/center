<?php
/**
 * Created by PhpStorm.
 * User: liangboyuan
 * Date: 2018/11/28
 * Time: 01:29
 */
namespace app\index\controller;
class Index extends Common
{
    public function index(){
        $news=db('article')->where('type',1)->order('time desc')->limit(10)->select();
        $annou=db('article')->where('type',2)->order('time desc')->limit(10)->select();
        $hotrestop=db('article')->where('rec',1)->limit(1)->order('id desc')->select();
        $hotres=db('article')->where('rec',1)->limit('1,5')->order('id desc')->select();
        $this->assign('hotres',$hotres);
        $this->assign('hotrestop',$hotrestop);
        $file=db('file')->select();
        $this->assign('file',$file);
        $this->assign('news',$news);
        $this->assign('annou',$annou);
        return view();
    }
}