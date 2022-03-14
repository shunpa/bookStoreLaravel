<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
	{
		$data = Book::latest()->paginate(5);

		return view('books.index', [
			'books' => $data
		]);
	}

	public function add()
	{
		$data = [
			[ "booktype_id" => 1, "booktype_name" => "Comic" ],
			[ "booktype_id" => 2, "booktype_name" => "Tech" ],
		];
		return view('books.add', [
			'booktypes' => $data
		]);
	}

	public function upload_photo()
    {
        if($_FILES["file"]["name"] != '')
            {
                $test = explode('.', $_FILES["file"]["name"]);
                $ext = end($test);
                $name = date_format(now(),'YmdHis').'-'.rand(100, 999) . '.' . $ext;
                if (!file_exists('storage/images')) {
                    mkdir('storage/images', 0777, true);
                }
                $location = 'storage/images/'.$name; 
               
                if($ext == 'jpg' || $ext == 'jpeg' || $ext == 'png')
                {
                    move_uploaded_file($_FILES["file"]["tmp_name"], $location);
                    $pp_orientation = Image::make(public_path($location))->exif("Orientation");
                            if($pp_orientation == 6 || $pp_orientation == 8)
                            {
                                $pp_resize = Image::make(public_path($location))->orientate()->resize('150','250');
                            }
                            else
                            {
                                $pp_resize = Image::make(public_path($location))->resize('150','250');
                            }
                            $pp_resize->save();
                    
                    echo '<img src="'.url($location).'" style="height:180px;width:120px;" class="img-thumbnail" /><br><h6>Image successfully uploaded!</h6><input type="text" name="thumbnail" value="'.$location.'" hidden>';
                    
                } else
                {
                    echo '<h4 class="text-danger">Invalid file type, try again by refreshing.</h4>';
                }
                
                
            }
    }

	public function create()
	{	
		
		$validator = validator(request()->all(), [
			'photo' => 'required',
			'book_name' => 'required',
			'price' => 'required',
			'writer_name' => 'required',
			'booktype_id' => 'required',
		]);

		if($validator->fails()) {
			return back()->withErrors($validator);
		}

		$book = new Book;
		$book->photo = request()->photo;
		$book->book_name = request()->book_name;
		$book->price = request()->price;
		$book->writer_name = request()->writer_name;
		$book->booktype_id = request()->booktype_id;
		$book->save();

		return redirect('/books');
	}

	public function delete($id)
	{
		$book = Book::find($id);
		$book->delete();

		return redirect('/books')->with('info', 'Book deleted');
	}


	public function edit($id)
	{
		$book = Book::find($id);

	}

	public function update($id)
	{
		$book = Book::find($id);
		$book->photo = request()->photo;
		$book->book_name = request()->book_name;
		$book->price = request()->price;
		$book->writer_name = request()->writer_name;
		$book->booktype_id = request()->booktype_id;
		$book->save();

		return redirect('/books');
	}


}
