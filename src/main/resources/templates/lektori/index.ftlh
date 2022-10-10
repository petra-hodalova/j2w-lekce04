[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    [#list lektori]
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Jméno a příjmení</th>
            <th scope="col">Role</th>
        </tr>
        </thead>
        <tbody>
            [#items as lektor]
            <tr>
                <td>${lektor?counter}</td>
                <td>${lektor.jmeno} ${lektor.prijmeni}</td>
                <td><i class="las la-bell"></i> ${lektor.role}</td>
                <td><a href="/lektori/detail/${lektor?index}" class="btn btn-primary">Detail</a></td>
            </tr>
            [/#items]
        </tbody>

    </table>
    [#else]
        <div>
            <p>Seznam lektorů je prázdný.</p>
        </div>
    [/#list]
</div>
</body>
</html>
