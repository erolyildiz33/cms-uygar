@extends('layouts.app')
@section('header')
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
@endsection
@section('content')
    <div id="mainContent">
        <div class="container-fluid">
            <h4 class="c-grey-900 mT-10 mB-30">Blog Kategori Listesi</h4>
            <div class="row">
                <div class="col-md-12">
                    <div class="bgc-white bd bdrs-3 p-20 mB-20">

                        <table id="datatable" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Blog Kategori Adı</th>
                                <th>Blog Kategori URL</th>
                                <th>Düzenle</th>
                                <th>Sil</th>
                            </tr>
                            </thead>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('footer')
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
    <script>
        $(document).ready(function () {

            let table = $("#datatable").DataTable({
                lengthMenu: [[25, 100, -1], [25, 100, "All"]],
                processin:true,
                serverSide:true,
                ajax:{
                    type:"POST",
                    headers:{'X-CSRF-TOKEN': '{{ csrf_token() }}'},
                    url:'{{ route('admin.blogcategory.data') }}',

                },
                columns:[
                    { data:'name',name:'name',orderable:false,searchable:false},
                    { data:'slug',name:'slug',orderable:false,searchable:false},
                    { data:'edit',name:'edit',orderable:false,searchable:false},
                    { data:'delete',name:'delete',orderable:false,searchable:false}
                ]
            })


        });



    </script>
@endsection
