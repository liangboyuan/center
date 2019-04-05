<?php
/**
 * Created by PhpStorm.
 * User: liangboyuan
 * Date: 2018/8/20
 * Time: 09:42
 */

namespace app\index\controller;
use think\Controller;

class Common extends Controller
{
    public function _initialize(){
        //当前位置
        if(input('cateid')){
            $this->getPos(input('cateid'));
        }
        if(input('artid')){
            $articles=db('article')->field('cateid')->find(input('artid'));
            $cateid=$articles['cateid'];
            $this->getPos($cateid);
        }
        $this->getNavCates();
        $this->getUrl();
    }

    public function getNavCates()
    {
        $cateres=db('cate')->where(array('pid'=>0))->order('sort asc')->select();
        foreach ($cateres as $k => $v) {
            $children=db('cate')->where(array('pid'=>$v['id']))->select();
            /*foreach($children as $c => $d){
                $children1=db('cate')->where(array('pid'=>$d['id']))->select();
            }*/
            if($children){
                $cateres[$k]['children']=$children;
            }else{
                $cateres[$k]['children']=0;
            }
        }
        //dump($cateres);
        $this->assign('cateres',$cateres);
    }

    public function getUrl(){
        $link=db('link')->select();
        $this->assign('link',$link);
    }

    public function getPos($cateid){
        $cate= new \app\index\model\Cate();
        $posArr=$cate->getparents($cateid);
        //dump($posArr); die;
        $this->assign('posArr',$posArr);
    }
}