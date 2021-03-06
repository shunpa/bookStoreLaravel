@extends('layouts.app')

@section('content')

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

		<form method="post" class="col col-sm-6">
			@csrf
			<div class="form-group">
				<label>Book Name</label>
				<input type="text" name="book_name" class="form-control">
			</div>
			<div class="form-group">
				<label>Author</label>
				<input type="text" name="writer_name" class="form-control">
			</div>
			<div class="form-group">
				<label>Price</label>
				<input type="text" name="price" class="form-control">
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
				<input type="file" name="photo" class="form-control">
			</div>
			<input type="submit" value="Submit" class="btn btn-primary">
		</form>
	</div>

@endsection