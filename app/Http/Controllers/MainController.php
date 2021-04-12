<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Sunra\PhpSimple\HtmlDomParser;
use App\Cat;
use App\Subcat;

class MainController extends Controller
{
    public function getCategories($html){
        $dom = HtmlDomParser::str_get_html($html);
        $category_items = $dom->find('div[class="ma-CategoriesCategory"]');

        foreach($category_items as $category_item)
        {
            $this->showCategory($category_item);
            $this->getSubCategories($category_item);
        }
    }

    public function showCategory($category_item){
        $category = $category_item->find('a[class="ma-MainCategory-mainCategoryNameLink"]',0);
        $category_title = $category->title;
        echo $category_title."<br>";
    }

    public function getSubCategories($category_item){
        $subcategory_items = $category_item->find('a[class="ma-SharedCrosslinks-link ma-SharedCrosslinks-size-s ma-SharedCrosslinks-type-neutral"]');
        $this->showSubCategories($subcategory_items);
    }

    public function showSubCategories($subcategory_items){
        foreach($subcategory_items as $subcategory_item)
        {
            $subcategory_title = $subcategory_item->title;
            echo $subcategory_title."<br>";
        }
        echo "<hr><br>";
    }

    public function scrape(Request $request){
        $url = $request->get('url');
        $client = new Client();
        $response = $client->request('GET',$url);
        $response_status_code = $response->getStatusCode();
        $html = $response->getBody()->getContents();

        if($response_status_code==200)
        {
            $dom = HtmlDomParser::str_get_html($html);            
            $this->getCategories($html);
        }
    }

    public function saveData(Request $request){
        $url = $request->get('url');
        $client = new Client();
        $response = $client->request('GET',$url);
        $response_status_code = $response->getStatusCode();
        $html = $response->getBody()->getContents();

        if($response_status_code==200)
        {
            $dom = HtmlDomParser::str_get_html($html);            
            $category_items = $dom->find('div[class="ma-CategoriesCategory"]');

            foreach($category_items as $category_item)
            {
                $category = $category_item->find('a[class="ma-MainCategory-mainCategoryNameLink"]',0);
                $category_title = $category->title;
                echo $category_title."<br>";

                $cat = new Cat();
                $cat->category = $category_title;
                $cat->save();
                
                echo $cat->id;
                echo "<br><hr>";

                $subcategory_items = $category_item->find('a[class="ma-SharedCrosslinks-link ma-SharedCrosslinks-size-s ma-SharedCrosslinks-type-neutral"]');
                foreach($subcategory_items as $subcategory_item)
                {
                    $subcategory_title = $subcategory_item->title;
                    echo $subcategory_title."<br>";

                    $subcat = new Subcat();
                    $subcat->cat_id = $cat->id;
                    $subcat->subcategory = $subcategory_title;
                    $subcat->save();
                }
                echo "<hr><br>";
            }
        }
    }
}
