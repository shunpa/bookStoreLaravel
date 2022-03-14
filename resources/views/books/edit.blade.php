<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div class="container">

		@if($errors->any())
			<div class="alert alert-warning">
				<ol>
					@foreach($errors->all() as $error)
						<li>{{ $error }}</li>
					@endforeach
				</ol>
			</div>
		@endif

		<form action="{{route('book.update',$book->id)}}" method="post">
			@csrf
			<!-- @method('PUT') -->
			<div class="form-group">
				<label>Book Name</label>
				<input type="text" name="book_name" class="form-control" value="{{$book->book_name}}">
			</div>
			<div class="form-group">
				<label>Author</label>
				<input type="text" name="writer_name" class="form-control" value="{{$book->writer_name}}">
			</div>
			<div class="form-group">
				<label>Price</label>
				<input type="text" name="price" class="form-control" value="{{$book->price}}">
			</div>
			<div class="form-group">
				<label>Book Type</label>
				<select class="form-control" name="booktype_id">
					@foreach($booktypes as $booktype)
						<option value="{{ $booktype['booktype_id'] }}">
							{{ $booktype['booktype_name'] }}
						</option>
					@endforeach
				</select>
			</div>
			<div class="form-group">
				<label>Photo</label>
				<input type="file" name="photo" class="form-control" value="{{$book->photo}}">
			</div>
			<input type="submit" value="Add Book Type" class="btn btn-primary">
		</form>
	</div>

</body>
</html>