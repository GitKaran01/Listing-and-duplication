<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Import Data</title>
    <style>
        body { font-family: sans-serif; display: grid; place-items: center; min-height: 90vh; background-color: #f4f4f4; }
        .container { background: #fff; border-radius: 8px; padding: 2rem; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        .alert { padding: 1rem; margin-bottom: 1rem; border-radius: 4px; }
        .alert-success { background: #d4edda; color: #155724; }
        .alert-error { background: #f8d7da; color: #721c24; }
        form { display: flex; flex-direction: column; gap: 1rem; }
        input[type="file"] { border: 1px solid #ccc; padding: 0.5rem; border-radius: 4px; }
        button { background: #007bff; color: white; padding: 0.75rem; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem; }
        button:hover { background: #0056b3; }
        .nav { margin-bottom: 2rem; display: flex; gap: 1rem; justify-content: center; }
        .nav a { text-decoration: none; background: #6c757d; color: white; padding: 0.5rem 1rem; border-radius: 4px; }
    </style>
</head>
<body>
    <div class="container">

        <nav class="nav">
            <a href="/">Import</a>
            <a href="/duplicates">Manage Duplicates</a>
            <a href="/report">View Report</a>
        </nav>

        <h2>Step 1: Import Business Data</h2>

        <?php if(session('success')): ?>
            <div class="alert alert-success"><?php echo e(session('success')); ?></div>
        <?php endif; ?>

        <?php if(session('error')): ?>
            <div class="alert alert-error"><?php echo e(session('error')); ?></div>
        <?php endif; ?>

       <form action="/import" method="POST" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <label for="file">Upload your Excel or CSV file:</label>
    <input type="file" name="file" id="file" accept=".xlsx,.xls,.csv,.txt" required>
    <?php $__errorArgs = ['file'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
        <div class="alert-error"><?php echo e($message); ?></div>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
    <button type="submit">Import Data</button>
</form>


    </div>
</body>
</html><?php /**PATH C:\Users\ACER\Desktop\INTERNSHIP PROJECTS\TASK 3\dbm\resources\views/import.blade.php ENDPATH**/ ?>