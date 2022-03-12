<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<h1>Book List</h1>
	<!-- Left Side Of Navbar -->
	<ul class="navbar-nav mr-auto">
		<li class="nav-item">
			<a class="nav-link text-success" href="{{ url('/books/add') }}">+ Add Book</a>
		</li>
	</ul>
	<div class="container">

		@if(session('info'))
			<div class="alert alert-info">
				{{ session('info') }}
			</div>
		@endif

		{{ $books->links() }}

		@foreach($books as $book)
			<div class="card mb-2">
				<div class="card-body">
					<img src="/storage/images/{{$book->photo}}">
					<h5 class="card-title">{{ $book->book_name }}</h5>
					<div class="card-subtitle mb-2 text-muted small">
						{{ $book->created_at->diffForHumans() }}
					</div>
					<p class="card-text">{{ $book->price }}</p>
					<p class="card-text">{{ $book->writer_name }}</p>
					
					<a class="btn btn-warning" href="{{ url("/books/delete/$book->id") }}">Delete</a>

				</div>
			</div>
		@endforeach
	</div>
</body>
</html>