<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Report</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; padding: 1rem; }
        .container { max-width: 1200px; margin: 0 auto; background: #fff; border-radius: 8px; padding: 2rem; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h1 { text-align: center; }
        .nav { margin-bottom: 2rem; display: flex; gap: 1rem; justify-content: center; }
        .nav a { text-decoration: none; background: #6c757d; color: white; padding: 0.5rem 1rem; border-radius: 4px; }
        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; }
        .card { border: 1px solid #ccc; border-radius: 8px; }
        .card-header { background: #f9f9f9; padding: 1rem; border-bottom: 1px solid #ccc; }
        .card-header h2 { margin: 0; }
        .card-body { padding: 1rem; }
        .card-body.summary h3 { font-size: 2rem; margin: 0; }
        .card-body.summary p { margin: 0; font-size: 1rem; color: #555; }
        table { width: 100%; border-collapse: collapse; }
        th, td { text-align: left; padding: 0.5rem; border-bottom: 1px solid #eee; }
        th { background-color: #f1f1f1; }
    </style>
</head>
<body>
    <div class="container">

        <nav class="nav">
            <a href="/">Import</a>
            <a href="/duplicates">Manage Duplicates</a>
            <a href="/report">View Report</a>
        </nav>

        <h1>Step 3: View Report</h1>

        <div class="grid">

            <div class="card">
                <div class="card-header"><h2>Summary</h2></div>
                <div class="card-body summary">
                    <h3><?php echo e($stats['total_listings']); ?></h3>
                    <p>Total Listings</p>
                    <hr style="border:0; border-top: 1px solid #eee; margin: 1rem 0;">
                    <h3><?php echo e($stats['unique_listing_count']); ?></h3>
                    <p>Unique Listings</p>
                    <hr style="border:0; border-top: 1px solid #eee; margin: 1rem 0;">
                    <h3><?php echo e($stats['duplicate_listing_count']); ?></h3>
                    <p>Duplicate Listings (unmerged)</p>
                    <hr style="border:0; border-top: 1px solid #eee; margin: 1rem 0;">
                    <h3><?php echo e($stats['incomplete_listing_count']); ?></h3>
                    <p>Incomplete Listings</p>
                </div>
            </div>

            <div class="card">
                <div class="card-header"><h2>City-wise Data</h2></div>
                <div class="card-body">
                    <table>
                        <thead><tr><th>City</th><th>Count</th></tr></thead>
                        <tbody>
                            <?php $__currentLoopData = $stats['city_wise']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr><td><?php echo e($row->city); ?></td><td><?php echo e($row->total); ?></td></tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card">
                <div class="card-header"><h2>Category + City-wise</h2></div>
                <div class="card-body">
                    <table>
                        <thead><tr><th>Category</th><th>City</th><th>Count</th></tr></thead>
                        <tbody>
                            <?php $__currentLoopData = $stats['category_city_wise']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr><td><?php echo e($row->category); ?></td><td><?php echo e($row->city); ?></td><td><?php echo e($row->total); ?></td></tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card">
                <div class="card-header"><h2>Category + Area-wise</h2></div>
                <div class="card-body">
                    <table>
                        <thead><tr><th>Category</th><th>Area</th><th>Count</th></tr></thead>
                        <tbody>
                            <?php $__currentLoopData = $stats['category_area_wise']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr><td><?php echo e($row->category); ?></td><td><?php echo e($row->area); ?></td><td><?php echo e($row->total); ?></td></tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</body>
</html><?php /**PATH D:\LEARN PROGRAMMING\INTERNSHIP PROJECTS\Final working project\dbm\resources\views/report.blade.php ENDPATH**/ ?>