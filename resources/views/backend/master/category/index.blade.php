@extends('layouts.backend.app')
@section('content')
    <div class="row">
        <div class="col-md-12">
            @component('components.backend.card.card-table')
                @slot('header')
                    <h4 class="card-title">{{ __('menu.category') }}</h4>
                    <div class="card-header-action">
                        <a href="{{ route('master.category.create') }}" class="btn btn-primary">{{ __('button.add') }}
                            {{ __('menu.category') }}</a>
                    </div>
                @endslot
                @slot('thead')
                    <tr>
                        <th>{{ __('field.category_name') }}</th>
                        <th>{{ __('field.slug') }}</th>
                        <th>{{ __('field.thumbnails') }}</th>
                        <th>{{ __('text.total') }}</th>
                        <th>{{ __('field.action') }}</th>
                    </tr>
                @endslot
                @slot('tbody')
                    @foreach ($data['category'] as $category)
                        <tr>
                            <td>{{ $category->name }}</td>
                            <td>{{ $category->slug }}</td>
                            <td><img src="{{ $category->thumbnails_path }}" alt="" width="200"></td>
                            <td>{{ $category->Products()->count() }}</td>
                            <td>
                                <x-button.dropdown-button :title="__('field.action')">
                                    <a class="dropdown-item has-icon" href="{{ route('master.category.edit',$category->id) }}"><i class="far fa-edit"></i>
                                        {{ __('button.edit') }}</a>
                                    <a class="dropdown-item has-icon" href="{{ route('master.category.show',$category->id) }}"><i class="far fa-eye"></i>
                                        {{ __('button.detail') }}</a>
                                    <a class="dropdown-item has-icon btn-delete" href="{{ route('master.category.delete',$category->id) }}"><i class="fa fa-trash"></i>
                                        {{ __('button.delete') }}</a>
                                </x-button.dropdown-button>
                            </td>
                        </tr>
                    @endforeach
                @endslot
            @endcomponent
        </div>
    </div>
@endsection
