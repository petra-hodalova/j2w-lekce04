[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>
<body>

<div class="container">
    [#include '/_common/header.ftlh']

    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col"></th>
            <th scope="col">Jméno</th>
            <th scope="col">Příjmení</th>
            <th scope="col">Bydliště</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list ucastnici as ucastnik]
        <tr>
            <td>${ucastnik?counter}</td>
            <td><i class="las la-mars" style="color: blue;"></i></td>
            <td>${ucastnik.jmeno}</td>
            <td>${ucastnik.prijmeni}</td>
            <td>
                [#if ucastnik.bydliste?exists]
                    ${ucastnik.bydliste}
                [/#if]
            </td>
            <td><a href="/ucastnici/detail/${ucastnik?index}" class="btn btn-primary">Detail</a></td>
        </tr>
        [/#list]
        </tbody>
    </table>
</div>
</body>
</html>
