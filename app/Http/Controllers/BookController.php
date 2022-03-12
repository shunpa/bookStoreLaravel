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


}
