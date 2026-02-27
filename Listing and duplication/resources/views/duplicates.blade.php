<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Duplicates</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; padding: 1rem; }
        .container { max-width: 1200px; margin: 0 auto; background: #fff; border-radius: 8px; padding: 2rem; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h1 { text-align: center; }
        .alert { padding: 1rem; margin-bottom: 1rem; border-radius: 4px; }
        .alert-success { background: #d4edda; color: #155724; }
        .alert-error { background: #f8d7da; color: #721c24; }
        .nav { margin-bottom: 2rem; display: flex; gap: 1rem; justify-content: center; }
        .nav a { text-decoration: none; background: #6c757d; color: white; padding: 0.5rem 1rem; border-radius: 4px; }
        .group { border: 1px solid #ccc; border-radius: 8px; margin-bottom: 2rem; }
        .group-header { background: #f9f9f9; padding: 1rem; border-bottom: 1px solid #ccc; }
        .group-header h2 { margin: 0; }
        .group-body { padding: 1rem; }
        table { width: 100%; border-collapse: collapse; }
        th, td { text-align: left; padding: 0.5rem; border-bottom: 1px solid #eee; }
        th { background-color: #f1f1f1; }
        tr.master { background-color: #fffbe6; }
        tr.duplicate { background-color: #fdf2f2; }
        button { background: #28a745; color: white; padding: 0.5rem 1rem; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem; }
        button:hover { background: #218838; }
    </style>
</head>
<body>
    <div class="container">

        <nav class="nav">
            <a href="/">Import</a>
            <a href="/duplicates">Manage Duplicates</a>
            <a href="/report">View Report</a>
        </nav>

        <h1>Step 2: Manage Duplicates</h1>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        @if(session('error'))
            <div class="alert alert-error">{{ session('error') }}</div>
        @endif

        @if($duplicateGroups->isEmpty())
            <p>No duplicate groups found. Have you run the `php artisan app:find-duplicates` command?</p>
        @else
            <p>Found {{ $duplicateGroups->count() }} groups to merge.</p>

            @foreach($duplicateGroups as $groupId => $businesses)
                <div class="group">
                    <form action="/duplicates/merge" method="POST">
                        @csrf
                        <input type="hidden" name="duplicate_group_id" value="{{ $groupId }}">

                        <div class="group-header">
                            @php $first = $businesses->first(); @endphp
                            <h2>Group: {{ $first->business_name }} / {{ $first->area }} / {{ $first->city }}</h2>
                        </div>

                        <div class="group-body">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Keep (Master)</th>
                                        <th>ID</th>
                                        <th>Status</th>
                                        <th>Mobile</th>
                                        <th>Category</th>
                                        <th>Sub-Category</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($businesses as $business)
                                        <tr class="{{ $business->status }}">
                                            <td>
                                                <input type="radio" name="master_id" value="{{ $business->id }}" 
                                                    {{ $business->status == 'master' ? 'checked' : '' }} required>
                                            </td>
                                            <td>{{ $business->id }}</td>
                                            <td>{{ $business->status }}</td>
                                            <td>{{ $business->mobile_no }}</td>
                                            <td>{{ $business->category }}</td>
                                            <td>{{ $business->sub_category }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <br>
                            <button type="submit">Merge this group (Keep selected, delete others)</button>
                        </div>
                    </form>
                </div>
            @endforeach
        @endif

    </div>
</body>
</html>