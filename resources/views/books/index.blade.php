@extends("layouts.app")

@section("content")

	<div class="container">

		@if(session('info'))
			<div class="alert alert-info">
				{{ session('info') }}
			</div>
		@endif

		{{ $books->links() }}


		<div class="card shadow mb-4">

			<div class="card-body">
				<div class="table-responsive">
					<table class="table"  width="100%" cellspacing="0">
						<thead>
							<tr>
								
                				<th>Book Name</th>
								<th>Photo</th>
								<th>Author</th>
								<th>Price</th>
								<th>Book Type</th>
                    			<th></th>
                				<th></th>
							</tr>
            			</thead>

             			<tbody>

              			<tr>
							  @foreach($books as $book)


              			<td value="" name="">
						  {{ $book->book_name }}      
              			</td>

                    	<td><img src="/storage/images/{{$book->photo}}" width="150" height="100"></td>

              			<td>{{ $book->writer_name }}</td>
              			<td>{{ $book->price }}</td>

						
              			<td >
						  {{ $book->booktype_id }}

              			</td>
						

            			<td>

            				<a href="{{ url("/books/delete/$book->id") }}" onclick="return confirm('Are you sure you want to delete?');">
            					<button type="button" class="btn btn-outline-danger">
            						<!-- <i class="fas fa-trash-alt"></i> -->Delete
            					</button>
            				</a>
            			</td>

            			<td>
            				<a href="{{ url("/books/edit/$book->id") }}">
            					<button type="button" class="btn btn-outline-primary">
            						<!-- <i class="fas fa-edit"></i> -->Edit
            					</button>  
            				</a>
            			</td>


            		</tr>

					@endforeach

            </tbody>
        </table>
    </div>

		
	</div>

@endsection